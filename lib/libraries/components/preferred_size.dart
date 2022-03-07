
import 'package:flutter/material.dart';

class CustomPreferredSize extends PreferredSize {
  CustomPreferredSize({Key? key, Widget? widget}) : super(
    key: key,
    preferredSize: const Size.fromHeight(30),
    child: AppBar(

      automaticallyImplyLeading: false,
    ),
  );
}