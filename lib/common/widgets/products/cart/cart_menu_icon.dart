import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/helpers/helper_functions.dart';

class ECartCounterIcon extends StatelessWidget {
  final int count;
  final VoidCallback? onTap;
  final Color? iconColor; // let the caller override per-screen if needed

  const ECartCounterIcon({super.key, this.count = 0, this.onTap, this.iconColor});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor ?? (dark ? EColors.white : EColors.dark),
          ),
          onPressed: onTap,
        ),
        if (count > 0)
          Positioned(
            right: 2,
            top: -2,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: dark ? EColors.light : EColors.dark,   // swapped for contrast
                shape: BoxShape.circle,
              ),
              constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
              child: Text(
                '$count',
                style: TextStyle(
                  color: dark ? EColors.dark : EColors.light,  // now inverts with bg
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}