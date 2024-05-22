import 'package:flutter/material.dart';

class TextfieldApp extends StatelessWidget {
  final String text;
  final String? hintText;
  final TextEditingController controller;
  final bool? obscureText;

  const TextfieldApp({
    super.key,
    required this.text,
    this.hintText,
    required this.controller,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {


    
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
    );
  }
}
