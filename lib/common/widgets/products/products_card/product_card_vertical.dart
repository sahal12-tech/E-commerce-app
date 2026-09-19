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
import '../../texts/EBrand_Title_With_Verify_Icon.dart';
import '../../texts/EBrand_title_text.dart';
import '../../texts/product_price_text.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(ESizes.sm),
      decoration: BoxDecoration(
        boxShadow: [EShadowstyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(ESizes.productImageRadius),
        color: dark ? EColors.darkGrey : EColors.light,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Thumbnail Section
          ERoundedContainer(
            height: 180,
            //padding: const EdgeInsets.all(ESizes.sm),
            backgroundColor: dark ? EColors.dark : EColors.light,
            child: Stack(
              children: [
                Positioned.fill(
                  child: ERoundBannerImage(
                    imageURL: EImages.productImage1,
                    applyImageRadius: true,
                  ),
                ),
                Positioned(
                  top: ESizes.xs,
                  left: ESizes.xs,
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
                Positioned(
                  top: 1,
                  right: 1,
                  child: ECircularIcon(
                    width: 40,
                    height: 40,
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          // Details Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const EBrandTitleText(
                title: "Green Nike Air Shoes",
              ),

              const SizedBox(height: ESizes.xs), // was spaceBtwitems / 2

              EBrandTitleWithVerifiedIcon(title: 'Nike',),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const EProductPriceText(
                    price: "56.0",
                    //isSale: true,
                  ),

                  // Add to Cart Button — shrunk from iconLg*1.2 (38.4) to iconLg (32)
                  Container(
                    width: ESizes.iconLg,
                    height: ESizes.iconLg,
                    decoration: BoxDecoration(
                      color: EColors.dark,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(ESizes.cardRadiusMd),
                        bottomRight: Radius.circular(ESizes.productImageRadius),
                      ),
                    ),
                    child: const Center(
                      child: Icon(Icons.add, color: EColors.white, size: ESizes.iconMd),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}