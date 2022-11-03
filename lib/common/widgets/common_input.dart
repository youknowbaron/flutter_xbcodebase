
import 'package:flutter/material.dart';

class CommonInput extends StatelessWidget {
  const CommonInput({
    Key? key,
    required this.controller,
    required this.focusNode,
    required this.hintText,
    required this.textInputType,
    this.obscureText = false,
    this.isError = false,
  }) : super(key: key);

  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: textInputType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Color(0xFFCCCCCC)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
                color: isError ? Colors.red : const Color(0xFFCCCCCC)),
          ),
          hintStyle: const TextStyle(
            color: Color(0xFFCCCCCC),
            fontSize: 14,
          ),
          contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
        ),
      ),
    );
  }
}
