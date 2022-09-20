import 'package:flutter/material.dart';

class ClickableContainer extends StatelessWidget {
  final void Function() onTap;
  final Widget child;
  final HitTestBehavior? hitTestBehavior;
  const ClickableContainer({
    Key? key,
    required this.onTap,
    required this.child,
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
