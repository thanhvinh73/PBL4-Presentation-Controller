import 'package:bot_toast/bot_toast.dart';
import 'package:client/shared/utils/app_colors.dart';
import 'package:flutter/material.dart';

Function() showLoading({
  WrapAnimation? wrapToastAnimation,
  BackButtonBehavior? backButtonBehavior,
  VoidCallback? onClose,
  Duration? duration,
  Duration? animationDuration,
  Duration? animationReverseDuration,
}) {
  return BotToast.showCustomLoading(
    wrapAnimation:
        (AnimationController controller, CancelFunc cancelFunc, Widget child) =>
            FadeAnimation(controller: controller, child: child),
    wrapToastAnimation: wrapToastAnimation,
    align: Alignment.center,
    enableKeyboardSafeArea: true,
    backButtonBehavior: backButtonBehavior,
    toastBuilder: (_) => const AppLoadingWidget(),
    clickClose: false,
    allowClick: false,
    crossPage: true,
    ignoreContentClick: true,
    onClose: onClose,
    duration: duration,
    animationDuration: animationDuration,
    animationReverseDuration: animationReverseDuration,
    backgroundColor: Colors.black26,
  );
}

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({Key? key, this.color = AppColors.white})
      : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: color));
  }
}

class FadeAnimation extends StatefulWidget {
  final Widget? child;
  final AnimationController controller;

  const FadeAnimation({Key? key, this.child, required this.controller})
      : super(key: key);

  @override
  FadeAnimationState createState() => FadeAnimationState();
}

class FadeAnimationState extends State<FadeAnimation>
    with SingleTickerProviderStateMixin {
  static final Tween<double> tweenOpacity = Tween<double>(begin: 0, end: 1);
  late final Animation<double> animation;
  late final Animation<double> animationOpacity;

  @override
  void initState() {
    animation =
        CurvedAnimation(parent: widget.controller, curve: Curves.decelerate);

    animationOpacity = tweenOpacity.animate(animation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationOpacity,
      child: widget.child,
    );
  }
}
