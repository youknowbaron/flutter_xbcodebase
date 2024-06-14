import 'package:memorise_vocabulary/bridges.dart';

class PasswordVisibilityButton extends StatelessWidget {
  const PasswordVisibilityButton({super.key, required this.isObscurePassword});

  final ValueNotifier<bool> isObscurePassword;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: isObscurePassword.value
          ? Icon($icons.visibility, color: context.colorScheme.outline)
          : Icon($icons.visibility_off, color: context.colorScheme.outline),
      onPressed: () {
        isObscurePassword.value = !isObscurePassword.value;
      },
    );
  }
}
