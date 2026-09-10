import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../util/constants/colors.dart';

class ECartCounterIcon extends StatelessWidget {
  final int count;
  final VoidCallback? onTap;

  const ECartCounterIcon({super.key, this.count = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          icon: const Icon(Iconsax.shopping_bag, color: EColors.white), // temp debug color
          onPressed: onTap,
        ),
        if (count > 0)
          Positioned(
            right: 2,
            top: -2,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: EColors.black,
                shape: BoxShape.circle,
              ),
              constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
              child: Text(
                '$count',
                style: const TextStyle(
                  color: EColors.white,
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
