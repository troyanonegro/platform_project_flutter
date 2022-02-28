import 'package:image/image.dart' as img;

///***************************************************************************
/// ImageHelper
///***************************************************************************
class ImageHelper {
  static final ImageHelper _instance = ImageHelper.internal();

  factory ImageHelper() => _instance;

  ImageHelper.internal();

  ///*************** getImageResized ***************
  Future<List<int>> getImageResized(List<int> imageFile) async {
    final img.Image? image = img.decodeImage(imageFile);
    final int width = (image!.width * 0.15).toInt();
    print(width);
    final img.Image resized = img.copyResize(image, width: width);
    final List<int> resizedBytes = img.encodeJpg(resized, quality: 70);
    return resizedBytes;
  }
}
