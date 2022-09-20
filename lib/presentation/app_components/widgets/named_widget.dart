import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/app_components/widgets/clickable_container.dart';

class NamedWidget extends StatelessWidget {
  final Widget? child;
  final String? text;
  final TextStyle? textStyle;
  final ClickableContainer? iconButton;
  const NamedWidget({
    Key? key,
    this.child,
    this.text,
    this.textStyle,
    this.iconButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text ?? "",
              style: textStyle ?? const TextStyle(color: Colors.white),
            ),
            iconButton ?? const SizedBox(),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          width: double.infinity,
          child: child,
        ),
      ],
    );
  }
}
