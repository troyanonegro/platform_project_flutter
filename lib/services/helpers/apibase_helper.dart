import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

import 'package:platform_project/libraries/components/image_helper.dart';
import 'package:http/http.dart' as http;
import 'package:platform_project/libraries/url_data.dart' as Constants;
import 'exceptions.dart';

///***************************************************************************
/// ApiBase
///***************************************************************************

abstract class ApiBase {
  late String serverUrl;
  late Map<String, String> headers;
}

///***************************************************************************
/// ApiService
///***************************************************************************
class ApiService extends ApiBase {
  /// Singleton constructor
  static final ApiService _instance = ApiService._internal();

  factory ApiService(String url, {required String token}) {
    _instance.serverUrl = Constants.SERVER_URL + url;

    /// For the body json
    _instance.headers = {HttpHeaders.contentTypeHeader: 'application/json'};

    if (token != null) {
      /// Add token if existing
      _instance.headers[HttpHeaders.authorizationHeader] = "JWT " + token;
    }

    return _instance;
  }

  ApiService._internal();

  ///*************** apiGetRequest ***************
  Future<dynamic> apiGetRequest() async {
    var responseJson;

    try {
      final response = (headers == null)
          ? await http.get(Uri.parse(serverUrl))
          : await http.get(Uri.parse(serverUrl), headers: headers);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }

    return responseJson;
  }

  ///*************** apiPostRequest ***************
  Future<dynamic> apiPostRequest(String body) async {
    var responseJson;

    try {
      final response = (headers == null)
          ? await http.post(Uri.parse(serverUrl) , body: body)
          : await http.post(Uri.parse(serverUrl), headers: headers, body: body);

      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }

    return responseJson;
  }

  ///*************** apiPostMultiPartRequest ***************
  Future<dynamic> apiPutMultiPartRequest(String filename, String token) async {
    // This request automatically sets the Content-Type header to
    // `multipart/form-data`. This value will override any value set by the user.
    // we need to include the token again

    var response;
    var request = http.MultipartRequest('PUT', Uri.parse(serverUrl));

    final imageHelper = ImageHelper();

    /// Add token
    request.headers[HttpHeaders.authorizationHeader] = "JWT " + token;

    /// returns size in bytes, it will limit 1 mb images and resize them
    request.files.add(http.MultipartFile.fromBytes(
      'picture_image',
      (File(filename).lengthSync() > (1024 * 1024)) ?
      await imageHelper.getImageResized(File(filename).readAsBytesSync())
          :  File(filename).readAsBytesSync(),
      filename: filename.split("/").last,
    ));

    try {
      response = await request.send();
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return _returnResponse(await http.Response.fromStream(response));
  }

  ///*************** apiPutRequest ***************
  Future<dynamic> apiPutRequest(String body) async {
    var responseJson;

    try {
      final response = (headers == null)
          ? await http.put(Uri.parse(serverUrl), body: body)
          : await http.put(Uri.parse(serverUrl), body: body, headers: headers);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }

    return responseJson;
  }

  ///*************** apiDeleteRequest ***************
  Future<dynamic> apiDeleteRequest() async {
    var responseJson;

    try {
      final response = (headers == null)
          ? await http.delete(Uri.parse(serverUrl))
          : await http.delete(Uri.parse(serverUrl), headers: headers);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }

    return responseJson;
  }

  ///*************** _returnResponse ***************
  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
      case 201: // For the POST

        debugPrint("##API: Body -> ${response.body}");
        debugPrint("##API: Status code -> ${response.statusCode}");

        /// Content-Type http header sent by the server is missing the
        /// encoding tag. This causes the Dart http client to decode the
        /// body as Latin-1 instead of utf-8.
        final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
        return responseJson;

      case 400:
        throw BadRequestException(utf8.decode(response.bodyBytes));

      case 401:
      case 403:
        throw UnauthorizedException(utf8.decode(response.bodyBytes));

      case 500:
        throw FetchDataException(
            'Error occured while Communication with Server with Status code: ${response.statusCode}');
    }
  }
}
