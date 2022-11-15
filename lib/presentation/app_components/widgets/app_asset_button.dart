import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/app_components/widgets/app_image_widget.dart';
import 'package:spotify_clone/presentation/app_components/widgets/simple_button.dart';

class AppAssetButton extends StatelessWidget {
  final void Function()? onTap;
  final double width;
  final double height;
  final String path;
  final Color? color;
  const AppAssetButton({
    Key? key,
    this.onTap,
    required this.path,
    required this.width,
    required this.height,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleButton(
        onTap: onTap,
        child: AppImageWidget(
            height: height, width: width, color: color, name: path));
  }
}
