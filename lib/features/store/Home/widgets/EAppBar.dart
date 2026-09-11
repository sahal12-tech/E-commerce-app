import 'package:flutter/material.dart';
import '../../../../common/widgets/AppBar/appbar.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/constants/text_strings.dart';

class EHomeAppBar extends StatelessWidget {
  const EHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EAppBar(
      showBackArrow: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ETexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: EColors.grey),
          ),
          Text(
            ETexts.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineMedium!.apply(color: EColors.white),
          ),
        ],
      ),
      actions: [
        ECartCounterIcon(count: 3),
      ],
    );
  }
}