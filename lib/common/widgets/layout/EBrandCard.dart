import 'package:flutter/material.dart';
import '../../../util/constants/colors.dart';
import '../../../util/constants/enums.dart';
import '../../../util/constants/image_strings.dart';
import '../../../util/constants/sizes.dart';
import '../../../util/helpers/helper_functions.dart';
import '../custom_shape/containers/ERounded_Container.dart';
import '../custom_shape/containers/E_Circular_Icon_Image_Container.dart';
import '../texts/EBrand_Title_With_Verify_Icon.dart';

class EBrandCard extends StatelessWidget {
  const EBrandCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: ERoundedContainer(
        padding: EdgeInsetsGeometry.all(ESizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        borderColor: EHelperFunctions.isdarkMode(context)
            ? EColors.light
            : EColors.grey,
        child: Row(
          children: [
            ///Icon
            Flexible(child: const ECircularIconImage(image: EImages.nikeIcon, fit: BoxFit.contain,)),

            const SizedBox(width: ESizes.spaceBtwitems / 2),

            ///--Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const EBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    "256 Products of Nike",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}