import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const InputText(
      {Key? key,
      this.labelText,
      this.hintText,
      this.prefixIcon,
      this.keyboardType,
      this.obscureText = false,
      required this.formProperty,
      required this.formValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          labelText: labelText,
          hintText: hintText,
          prefixIcon: prefixIcon == null ? null : Icon(prefixIcon)),
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) {
          return 'Este Campo es requerido';
        }
      },
    );
  }
}
