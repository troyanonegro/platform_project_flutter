import 'package:flutter/material.dart';

class CustomFadeImage extends StatelessWidget {
  const CustomFadeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FadeInImage(
      placeholder: AssetImage('assets/image/loadingStandar.gif'),
      image: NetworkImage(
          'https://cdn-icons-png.flaticon.com/512/2991/2991148.png'),
      width: double.infinity,
      height: 200,
    );
  }
}
