import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/app_constants.dart';
import 'package:xbcodebase/features/splash/shared/splash_providers.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoaded = useValueNotifier(false);
    // Second animation
    final AnimationController animationController =
        useAnimationController(duration: const Duration(milliseconds: 1000));
    final Animation<double> animation =
        Tween<double>(begin: 8 / 3, end: -5 / 3).animate(animationController);
    animation.addListener(() {
      if (isLoaded.value) return;
      if (animation.value <= 2.75 / 3) {
        animationController.stop();
      }
    });
    animation.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        ref.read(splashProvider.notifier).state.whenOrNull(loaded: (data) {
          GoRouter.of(context).go(data == true ? RKeys.home : RKeys.login);
        });
      }
    });
    // First animation
    final AnimationController fadedAnimationController =
        useAnimationController(duration: const Duration(milliseconds: 1000));
    late Animation<double> fadedAnimation =
        Tween<double>(begin: 0, end: 1).animate(fadedAnimationController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              animationController.forward();
            }
          });

    useEffect(() {
      fadedAnimationController.forward();
      ref.read(splashProvider.notifier).checkSession();
      return;
    }, const []);

    ref.listen(splashProvider, (previous, next) {
      next.maybeWhen(
        orElse: () {},
        loaded: (data) {
          isLoaded.value = true;
          if (animation.isCompleted) return;
          if (isLoaded.value) {
            animationController.forward();
          }
          return;
        },
      );
    });

    final screenWidth = MediaQuery.of(context).size.width;

    final originalGradientWidth = screenWidth;
    final originalGradientHeight = screenWidth / sqrt2 / (7 / 3);

    final animationValue =
        originalGradientWidth * useValueListenable(animation) / sqrt2;
    final animationValue2 = originalGradientWidth *
        (useValueListenable(animation) - 2.75 / 3) /
        sqrt2;

    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Transform.translate(
              offset: Offset(-animationValue, animationValue),
              // offset: const Offset(0, 0),
              child: Transform.translate(
                // offset: Offset(0, -gradientHeight / 2),
                offset: Offset(0, -originalGradientHeight * 4 / 3),
                child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(-45 / 360),
                  // turns: const AlwaysStoppedAnimation(0 / 360),
                  child: ScaleTransition(
                    scale: const AlwaysStoppedAnimation(7.0 / 3.0),
                    // scale: const AlwaysStoppedAnimation(1),
                    child: Transform.translate(
                      offset: Offset(0, originalGradientHeight / 4),
                      // offset: Offset(0, 0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0x00E74E00),
                              Color(0xFFE74E00),
                              Color(0x00E74E00),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        width: originalGradientWidth,
                        height: originalGradientHeight,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Transform.translate(
              offset: Offset(-animationValue2, animationValue2),
              // offset: const Offset(0, 0),
              // offset: Offset(-originalGradientWidth * 4/3 / sqrt2, originalGradientWidth * 4/3 / sqrt2),
              child: Transform.translate(
                // offset: Offset(0, -gradientHeight / 2),
                offset: Offset(0, originalGradientHeight * 4 / 3),
                child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(-45 / 360),
                  // turns: const AlwaysStoppedAnimation(0 / 360),
                  child: ScaleTransition(
                    scale: const AlwaysStoppedAnimation(7.0 / 3.0),
                    // scale: const AlwaysStoppedAnimation(1),
                    child: Transform.translate(
                      offset: Offset(0, -originalGradientHeight / 4),
                      // offset: Offset(0, 0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0x00009F9B),
                              Color(0xFF009F9B),
                              Color(0x00009F9B),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        width: originalGradientWidth,
                        height: originalGradientHeight,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Hero(
              tag: 'logo_hero_tag',
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 200),
                child: SizedBox(
                  width: screenWidth * 0.45,
                  child: AspectRatio(
                    aspectRatio: 7 / 2,
                    child: FadeTransition(
                      opacity: fadedAnimation,
                      child: Image.asset('assets/images/logo_guidenavi.png'),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
