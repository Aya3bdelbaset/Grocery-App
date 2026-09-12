import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String? labelText;
  String? Function(String?)? validator;
  bool obscureText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? hintText;
  Color? fillColor;

  CustomTextField({
    super.key,
    this.labelText,
    this.validator,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.fillColor,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,

      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(fontSize: 16, color: Color(0xff7C7C7C)),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xff7C7C7C)),
        filled: fillColor != null,
        fillColor: fillColor,

        border: fillColor != null
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              )
            : const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff7C7C7C)),
              ),

        enabledBorder: fillColor != null
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              )
            : const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff7C7C7C)),
              ),
      ),

      validator: validator,
    );
  }
}