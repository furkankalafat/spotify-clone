import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  final HitTestBehavior? hitTestBehavior;
  const SimpleButton({
    Key? key,
    required this.child,
    required this.onTap,
    this.hitTestBehavior = HitTestBehavior.translucent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: hitTestBehavior,
      child: child,
    );
  }
}
