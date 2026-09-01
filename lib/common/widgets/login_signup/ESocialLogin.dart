import 'package:flutter/material.dart';
import '../../../util/constants/colors.dart';
import '../../../util/constants/image_strings.dart';
import '../../../util/constants/sizes.dart';
import '../../../util/helpers/helper_functions.dart';

class ESocialLogin extends StatelessWidget {
  const ESocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? EColors.darkGrey : EColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: ESizes.iconLg,
              width: ESizes.iconLg,
              image: AssetImage(EImages.google),
            ),
          ),
        ),
        const SizedBox(width: ESizes.spaceBtwIcons),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? EColors.darkGrey : EColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: ESizes.iconLg,
              width: ESizes.iconLg,
              image: AssetImage(EImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}