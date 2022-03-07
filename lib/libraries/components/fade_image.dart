import 'package:flutter/material.dart';
import 'package:platform_project/libraries/widgets.dart';

class CustomFadeImage extends StatelessWidget {
  final String imageUrl;
  final double imageHeight;
  CustomFadeImage({required this.imageUrl, required this.imageHeight});

  @override
  Widget build(BuildContext context) {
    return  FadeInImage(
      placeholder: AssetImage('assets/image/loadingStandar.gif'),
      image: NetworkImage(imageUrl),
      width: double.infinity,
      height: imageHeight,
    );
  }
}
