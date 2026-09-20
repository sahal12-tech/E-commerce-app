import 'package:flutter/material.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/helpers/helper_functions.dart';

/// A reusable circular container that displays an icon/image,
/// with sensible defaults for background, size, and tap handling.
class ECircularIconImage extends StatelessWidget {
  const ECircularIconImage({
    super.key,
    required this.image,
    this.width = 56,
    this.height = 56,
    this.padding = ESizes.sm,
    this.overlayColor,
    this.backgroundColor,
    this.isBackgroundColorLight = true,
    this.fit = BoxFit.contain,
    this.onPressed,
  });

  final String image;
  final double width;
  final double height;
  final double padding;
  final Color? overlayColor;
  final Color? backgroundColor;
  final bool isBackgroundColorLight;
  final BoxFit fit;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: backgroundColor ??
              (isBackgroundColorLight
                  ? (dark ? EColors.black : EColors.white)
                  : (dark ? EColors.white : EColors.black)),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Image(
            image: AssetImage(image),
            fit: fit,
            color: overlayColor ?? (dark ? EColors.white : EColors.black),
          ),
        ),
      ),
    );
  }
}