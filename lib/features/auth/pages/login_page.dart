import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/bridges.dart';
import 'package:xbcodebase/core/loggers/logger.dart';
import 'package:xbcodebase/features/auth/notifiers/authentication_notifier.dart';

import '../../../common/widgets/common_input.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Hooks zone
    final animationController =
        useAnimationController(duration: const Duration(milliseconds: 300));
    final animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);

    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final emailFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();
    final emailErrorText = useValueNotifier<String?>(null);
    final passwordErrorText = useValueNotifier<String?>(null);
    final errorText = useValueNotifier<String?>(null);

    ref.listen<AsyncValue>(authenticationNotifierProvider, (previous, next) {
      next.maybeWhen(
        orElse: () {},
        error: (_, __) async {
          errorText.value =
              "loiroibanoi, navigate to home page in 3 seconds...";
          await Future.delayed(const Duration(seconds: 1));
          errorText.value =
              "loiroibanoi, navigate to home page in 2 seconds...";
          await Future.delayed(const Duration(seconds: 1));
          errorText.value =
              "loiroibanoi, navigate to home page in 1 seconds...";
          await Future.delayed(const Duration(seconds: 1));
          if (context.mounted) {
            GoStep.home.go(context);
          }
        },
        data: (data) {
          logger.w('login provider listener $data');
          if (data != null) {
            GoStep.home.go(context);
          }
        },
      );
    });

    final isError = errorText.value != null;

    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    final safeAreaHeight = size.height - padding.top - padding.bottom;

    useEffect(() {
      Future.delayed(
        const Duration(milliseconds: 400),
        () {
          if (!context.mounted) return;
          animationController.forward();
        },
      );

      emailFocusNode.addListener(() {
        if (!context.mounted) return;
        debugPrint('🚑🚑🚑 emailFocusNode ${emailFocusNode.hasFocus}');
        // Unfocus
        if (!emailFocusNode.hasFocus) {
          final email = emailController.text;
          if (email.isEmpty) {
            emailErrorText.value = 'Email is empty';
            // } else if (!email.isValidEmail()) {
            //   _emailErrorText = 'Invalid email';
          } else {
            emailErrorText.value = null;
          }
          errorText.value = null;
        }
      });

      passwordFocusNode.addListener(() {
        if (!context.mounted) return;
        debugPrint('🚑🚑🚑 passwordForcusNode ${passwordFocusNode.hasFocus}');
        // Unfocus
        if (!passwordFocusNode.hasFocus) {
          final password = passwordController.text;
          if (password.isEmpty) {
            passwordErrorText.value = 'Password is empty';
          } else {
            passwordErrorText.value = null;
          }
          errorText.value = null;
        }
      });
      return null;
    }, const []);

    final scaffold = Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: SizedBox(
              height: safeAreaHeight,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: 'logo_hero_tag',
                    child: _logoWidget(
                        size.width, emailController, passwordController),
                  ),
                  const SizedBox(height: 34),
                  FadeTransition(
                    opacity: animation,
                    child: _formWidget(
                      context,
                      ref,
                      isError,
                      emailController,
                      passwordController,
                      emailFocusNode,
                      passwordFocusNode,
                      emailErrorText,
                      passwordErrorText,
                      errorText,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    return PopScope(
      canPop: false,
      child: scaffold,
    );
  }

  Column _formWidget(
    BuildContext context,
    WidgetRef ref,
    bool isError,
    TextEditingController emailController,
    TextEditingController passwordController,
    FocusNode emailFocusNode,
    FocusNode passwordFocusNode,
    ValueNotifier<String?> emailErrorText,
    ValueNotifier<String?> passwordErrorText,
    ValueNotifier<String?> errorText,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ValueListenableBuilder(
          valueListenable: errorText,
          builder: (context, value, child) => Container(
            height: 40,
            alignment: Alignment.centerLeft,
            child: value != null
                ? Text(
                    value,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: emailErrorText,
          builder: (_, value, __) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CommonInput(
                controller: emailController,
                focusNode: emailFocusNode,
                hintText: 'メールアドレス',
                textInputType: TextInputType.emailAddress,
                isError: emailErrorText.value != null,
              ),
              if (value != null)
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    value,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
                )
            ],
          ),
        ),
        const SizedBox(height: 20),
        ValueListenableBuilder(
          valueListenable: passwordErrorText,
          builder: (_, value, __) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CommonInput(
                controller: passwordController,
                focusNode: passwordFocusNode,
                hintText: 'パスワード',
                textInputType: TextInputType.visiblePassword,
                obscureText: true,
                isError: passwordErrorText.value != null,
              ),
              if (value != null)
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    value,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
                )
            ],
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: double.infinity,
          height: 44,
          child: TextButton(
            onPressed: _isEnabledButton(
                    useValueListenable(emailController).text,
                    useValueListenable(passwordController).text,
                    useValueListenable(emailErrorText),
                    useValueListenable(passwordErrorText))
                ? () {
                    _onLoginTapped(
                        ref, emailController.text, passwordController.text);
                  }
                : null,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).primaryColor.withOpacity(_isEnabledButton(
                        emailController.text,
                        passwordController.text,
                        emailErrorText.value,
                        passwordErrorText.value)
                    ? 1
                    : 0.5),
              ),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
            child: const Text(
              'ログイン',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: null,
          child: Text(
            'パスワードを忘れた方はこちら',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 44,
          child: TextButton(
            onPressed: null,
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    side: BorderSide(color: Theme.of(context).primaryColor)),
              ),
            ),
            child: Text(
              'ガイドナビプレミアムの概要',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _onLoginTapped(WidgetRef ref, String email, String password) {
    FocusManager.instance.primaryFocus?.unfocus();
    ref.read(authenticationNotifierProvider.notifier).logIn(email, password);
  }

  Widget _logoWidget(
    double screenWidth,
    TextEditingController emailController,
    TextEditingController passwordController,
  ) {
    return GestureDetector(
      onDoubleTap: kDebugMode
          ? () {
              emailController.text = 'nhan.nguyen@executionlab.asia';
              passwordController.text = 'sxnhan2806';
            }
          : null,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 200),
        child: SizedBox(
          width: screenWidth * 0.45,
          child: AspectRatio(
            aspectRatio: 7 / 2,
            child: Image.asset('assets/images/logo_guidenavi.png'),
          ),
        ),
      ),
    );
  }

  bool _isEnabledButton(String email, String password, String? emailErrorText,
          String? passwordErrorText) =>
      emailErrorText == null &&
      passwordErrorText == null &&
      email.isNotEmpty &&
      password.isNotEmpty;
}
