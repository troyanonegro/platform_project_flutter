
import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration FromInputDecoration({
     String? hintText,
    required String labelText,
    IconData? prefixIcon
  }) {
    return InputDecoration(
        fillColor: Colors.white,
        filled: true,
        
        border: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        labelText: labelText,
        hintText: hintText,
        labelStyle: const TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.all(8.8),
        prefixIcon: prefixIcon != null  ? Icon(prefixIcon, color: Colors.grey) :null
    );
  }
}
