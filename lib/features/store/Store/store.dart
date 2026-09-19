import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/common/widgets/AppBar/appbar.dart';
import 'package:flutter_catelog_page/common/widgets/custom_shape/containers/ERounded_Container.dart';
import 'package:flutter_catelog_page/common/widgets/custom_shape/containers/ESearchContainer.dart';
import 'package:flutter_catelog_page/common/widgets/layout/grid_layout.dart';
import 'package:flutter_catelog_page/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_catelog_page/common/widgets/texts/EBrand_Title_With_Verify_Icon.dart';
import 'package:flutter_catelog_page/common/widgets/texts/section_heading.dart';
import 'package:flutter_catelog_page/util/constants/colors.dart';
import 'package:flutter_catelog_page/util/constants/enums.dart';
import 'package:flutter_catelog_page/util/constants/image_strings.dart';
import 'package:flutter_catelog_page/util/constants/sizes.dart';
import 'package:flutter_catelog_page/util/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);
    return Scaffold(
      appBar: EAppBar(
        showBackArrow: false,
        title: Text("Store", style: Theme.of(context).textTheme.headlineMedium),
        actions: [ECartCounterIcon(count: 4, onTap: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: dark ? EColors.black : EColors.white,
              expandedHeight: 440,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: EdgeInsetsGeometry.all(ESizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ///Search Bar
                    const SizedBox(height: ESizes.spaceBtwitems),
                    const ESearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: ESizes.spaceBtwSections),

                    /// Featured Brands
                    ESectionHeading(
                      title: 'Featured Brands',
                      showActionButton: true,
                      onPressed: () {},
                    ),
                    const SizedBox(height: ESizes.spaceBtwitems / 1.5),

                    EGridLayout(
                      mainAxisExtent: 80,
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: ERoundedContainer(
                            padding: EdgeInsetsGeometry.all(ESizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            borderColor: EHelperFunctions.isdarkMode(context)
                                ? EColors.light
                                : EColors.grey,
                            child: Row(
                              children: [
                                ///Icon
                                Flexible(child: const ECircularIconImage()),

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
                                        "256 Products of abcd of hij",
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}

class ECircularIconImage extends StatelessWidget {
  const ECircularIconImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      padding: const EdgeInsetsGeometry.all(ESizes.sm),
      decoration: BoxDecoration(
        color: EHelperFunctions.isdarkMode(context)
            ? EColors.black
            : EColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: AssetImage(EImages.clothIcon),
        color: EHelperFunctions.isdarkMode(context)
            ? EColors.white
            : EColors.black,
      ),
    );
  }
}
