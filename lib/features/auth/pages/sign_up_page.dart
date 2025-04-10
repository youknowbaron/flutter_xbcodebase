import 'dart:io';
import 'dart:math';

import 'package:memorise_vocabulary/common/extensions/loading.dart';
import 'package:memorise_vocabulary/core/widgets/dismiss_keyboard.dart';
import 'package:memorise_vocabulary/features/auth/notifiers/signup_notifier.dart';
import 'package:memorise_vocabulary/features/auth/widgets/password_visibility_button.dart';

import '../../../bridges.dart';
import '../widgets/input_validator.dart';

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    final safeAreaHeight = size.height - padding.top - padding.bottom - kToolbarHeight;

    final nameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final isObscurePassword = useValueNotifier<bool>(true);
    final nameFocusNode = useFocusNode();
    final emailFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();
    final nameErrorText = useValueNotifier<String?>(null);
    final emailErrorText = useValueNotifier<String?>(null);
    final passwordErrorText = useValueNotifier<String?>(null);

    useEffect(() {
      nameFocusNode.addListener(() {
        if (!context.mounted) return;
        // Unfocus
        if (!nameFocusNode.hasFocus) {
          final name = nameController.text;
          nameErrorText.value = InputValidator.validRequiredField(name, $strings.name);
        }
      });

      emailFocusNode.addListener(() {
        if (!context.mounted) return;
        // Unfocus
        if (!emailFocusNode.hasFocus) {
          final email = emailController.text;
          emailErrorText.value = InputValidator.validEmail(email);
        }
      });

      passwordFocusNode.addListener(() {
        if (!context.mounted) return;
        // Unfocus
        if (!passwordFocusNode.hasFocus) {
          final password = passwordController.text;
          passwordErrorText.value = InputValidator.validPassword(password);
        }
      });
      return null;
    }, const []);

    ref.convenienceListen(
      signUpNotifierProvider,
      (data) async {
        if (data != null) {
          await CommonPopup.showNotificationPopup(
            context: context,
            title: $strings.mailSent,
            message: $strings.signUpSuccessMsg,
            fittedMessage: true,
          );
          if (context.mounted) {
            context.pop();
          }
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text($strings.createAccount),
      ),
      body: SafeArea(
        child: DismissKeyboard(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: SizedBox(
              height: max(safeAreaHeight, 630),
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LabelInput(
                    controller: nameController,
                    label: $strings.name,
                    focusNode: nameFocusNode,
                    hintText: $strings.name,
                    errorText: useValueListenable(nameErrorText),
                  ),
                  const Height(16),
                  LabelInput(
                    controller: emailController,
                    label: $strings.emailAddress,
                    hintText: $strings.emailAddress,
                    focusNode: emailFocusNode,
                    errorText: useValueListenable(emailErrorText),
                    textInputType: TextInputType.emailAddress,
                  ),
                  const Height(16),
                  LabelInput(
                    controller: passwordController,
                    label: $strings.password,
                    textInputType: TextInputType.visiblePassword,
                    focusNode: passwordFocusNode,
                    obscureText: useValueListenable(isObscurePassword),
                    errorText: useValueListenable(passwordErrorText),
                    trailing: PasswordVisibilityButton(isObscurePassword: isObscurePassword),
                  ),
                  const Height(4),
                  Text(
                    $strings.passwordRequirementsMsg,
                    style: $styles.body12.colour(context.colorScheme.onSurfaceVariant),
                  ),
                  const Height(40),
                  ElevatedButton(
                    onPressed: () {
                      final name = nameController.text;
                      final email = emailController.text;
                      final password = passwordController.text;
                      nameErrorText.value = InputValidator.validRequiredField(name, $strings.name);
                      emailErrorText.value = InputValidator.validEmail(email);
                      passwordErrorText.value = InputValidator.validPassword(password);
                      if (nameErrorText.value != null ||
                          emailErrorText.value != null ||
                          passwordErrorText.value != null) {
                        return;
                      }
                      ref.read(signUpNotifierProvider.notifier).signUp(
                            name: name,
                            email: email,
                            password: password,
                          );
                    },
                    child: Text($strings.next),
                    onLongPress: () {
                      emailController.text = 'vobach1997ts@gmail.com';
                      passwordController.text = 'Password123';
                      nameController.text = 'Baron Vo';
                    },
                  ),
                  const Height(16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
