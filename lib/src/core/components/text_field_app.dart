import 'package:flutter/material.dart';

class TextFieldApp extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const TextFieldApp({super.key, required this.hint, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hint,
      ),
    );
  }
}
