// e_brand_title_text_with_verified_icon.dart
import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/common/widgets/texts/EBrand_title_text.dart';
import 'package:iconsax/iconsax.dart';
import '../../../util/constants/colors.dart';
import '../../../util/constants/enums.dart';
import '../../../util/constants/sizes.dart';

class EBrandTitleWithVerifiedIcon extends StatelessWidget {
  const EBrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = EColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor;
  final Color? iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: EBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ), // EBrandTitleText
        ), // Flexible
        const SizedBox(width: ESizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: ESizes.iconXs),
      ],
    ); // Row
  }
}