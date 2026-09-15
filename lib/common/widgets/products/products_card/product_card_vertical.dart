import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/common/styles/EShadowStyle.dart';
import 'package:flutter_catelog_page/common/widgets/custom_shape/containers/ERounded_Container.dart';
import 'package:flutter_catelog_page/features/store/Home/widgets/ERoundedBannerImage.dart';
import 'package:flutter_catelog_page/util/constants/colors.dart';
import 'package:flutter_catelog_page/util/constants/image_strings.dart';
import 'package:flutter_catelog_page/util/constants/sizes.dart';
import 'package:flutter_catelog_page/util/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
import '../../Icons/ECircularIcon.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);
    return Container(
      width: 180,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        boxShadow: [EShadowstyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(ESizes.productImageRadius),
        color: dark ? EColors.darkGrey : EColors.light,
      ),
      child: Column(
        children: [
          ERoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(ESizes.sm),
            backgroundColor: dark ? EColors.dark : EColors.light,
            child: Stack(
              children: [
                //thumbnail Image
                ERoundBannerImage(
                  imageURL: EImages.productImage1,
                  applyImageRadius: true,
                  fit: BoxFit.cover,
                ),
                //sale tag
                Positioned(
                  top: 10,
                  left: 10,
                  child: ERoundedContainer(
                    radius: ESizes.sm,
                    backgroundColor: EColors.secondary.withValues(alpha: 0.8),
                    padding: EdgeInsets.symmetric(
                      horizontal: ESizes.sm,
                      vertical: ESizes.xs,
                    ),
                    child: Text(
                      "25%",
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.apply(color: Colors.black),
                    ),
                  ),
                ),
                //fav Icon
                ECircularIcon(icon: (Iconsax.heart5), color: Colors.red,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
