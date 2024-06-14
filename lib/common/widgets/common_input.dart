import 'package:flutter/material.dart';
import 'package:memorise_vocabulary/core/extensions/theme_extensions.dart';

class CommonInput extends StatelessWidget {
  const CommonInput({
    super.key,
    required this.controller,
    this.enabled = true,
    this.focusNode,
    this.hintText,
    this.textInputType,
    this.obscureText = false,
    this.isError = false,
  });

  final bool enabled;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hintText;
  final TextInputType? textInputType;
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
          enabled: enabled,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: context.colorScheme.outline),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: isError ? Colors.red : context.colorScheme.outline),
          ),
          hintStyle: TextStyle(
            color: context.colorScheme.onSurfaceVariant,
            fontSize: 14,
          ),
          contentPadding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
        ),
      ),
    );
  }
}