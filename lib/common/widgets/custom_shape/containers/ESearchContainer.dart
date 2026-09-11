import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/util/constants/sizes.dart';
import 'package:flutter_catelog_page/util/device/device_utility.dart';
import 'package:flutter_catelog_page/util/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../util/constants/colors.dart';

class ESearchContainer extends StatelessWidget {
  const ESearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ESizes.defaultSpace),
      child: Container(
        width: EDeviceUtils.getScreenWidth(context),
        padding: EdgeInsets.all(ESizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? (dark ? EColors.dark : EColors.white)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(ESizes.cardRadiusLg),
          border: showBorder
              ? Border.all(color: EColors.grey)
              : null,
        ),
        child: Row(
          children: [
            if (icon != null)
              Icon(
                icon,
                color: dark ? EColors.white : EColors.darkGrey,
              ),
            const SizedBox(width: ESizes.spaceBtwitems),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                color: dark ? EColors.white : EColors.darkGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}