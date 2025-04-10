import 'package:flutter/material.dart';
import 'package:memorise_vocabulary/common/widgets/common_input.dart';
import 'package:memorise_vocabulary/core/widgets/space.dart';

class LabelInput extends StatelessWidget {
  const LabelInput({
    super.key,
    required this.controller,
    this.label,
    this.inputEnabled = true,
    this.focusNode,
    this.hintText,
    this.textInputType,
    this.obscureText = false,
    this.errorText,
    this.trailing,
  });

  final TextEditingController? controller;
  final String? label;
  final bool inputEnabled;
  final FocusNode? focusNode;
  final String? hintText;
  final TextInputType? textInputType;
  final bool obscureText;
  final String? errorText;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (label != null) ...[
          Text(label!),
          const Height(4),
        ],
        Stack(
          alignment: Alignment.center,
          children: [
            CommonInput(
              controller: controller,
              enabled: inputEnabled,
              focusNode: focusNode,
              hintText: hintText,
              isError: errorText != null,
              obscureText: obscureText,
              textInputType: textInputType,
            ),
            if (trailing != null)
              Align(
                alignment: Alignment.centerRight,
                child: trailing!,
              ),
          ],
        ),
        if (errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              errorText!,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),
            ),
          )
      ],
    );
  }
}
