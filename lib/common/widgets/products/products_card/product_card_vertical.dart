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
import '../../texts/product_title_text.dart';
import '../../texts/product_price_text.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(ESizes.sm), // Fixed: was 0, now small padding
      decoration: BoxDecoration(
        boxShadow: [EShadowstyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(ESizes.productImageRadius),
        color: dark ? EColors.darkGrey : EColors.light,
      ),
      child: Column(
        children: [
          // Thumbnail Section
          ERoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(ESizes.sm),
            backgroundColor: dark ? EColors.dark : EColors.light,
            child: Stack(
              children: [
                // Thumbnail Image
                ERoundBannerImage(
                  imageURL: EImages.productImage1,
                  applyImageRadius: true,
                  fit: BoxFit.cover,
                ),
                // Sale Tag
                Positioned(
                  top: ESizes.xs, // Fixed: was 10, now extra small (4)
                  left: ESizes.xs, // Fixed: was 10, now extra small (4)
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
                // Favorite Icon
                Positioned(
                  top: 0,
                  right: 0,
                  child: ECircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          // Details Section
          Padding(
            padding: const EdgeInsets.only(left: ESizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // Fixed: Added to prevent unbounded height issues
              children: [
                // Product Title
                const EProductTitleText(
                  title: "Green Nike Air Shoes",
                  smallSize: true,
                ),

                // Spacer for consistent height - REMOVED as requested
                // Using fixed heights and proper constraints instead
                const SizedBox(height: ESizes.spaceBtwitems / 2),

                // Brand Text with Verification Icon
                Row(
                  children: [
                    Text(
                      "Nike",
                      style: Theme.of(context).textTheme.labelMedium,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(width: ESizes.xs),
                    const Icon(Iconsax.verify, size: ESizes.iconXs, color: EColors.primary),
                  ],
                ),

                // Price and Add to Cart Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Price
                    const EProductPriceText(
                      price: "56.0",
                      isSale: true, // Showing as sale price with line through
                    ),

                    // Add to Cart Button
                    Container(
                      decoration: BoxDecoration(
                        color: EColors.dark,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(ESizes.cardRadiusMd), // 12
                          bottomLeft: Radius.circular(ESizes.productImageRadius), // 16
                        ),
                      ),
                      child: const Center(
                        child: SizedBox(
                          width: ESizes.iconLg * 1.2, // 32 * 1.2 = 38.4
                          height: ESizes.iconLg * 1.2, // 32 * 1.2 = 38.4
                          child: Icon(Icons.add, color: EColors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}