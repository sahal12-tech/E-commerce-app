import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/common/widgets/AppBar/appbar.dart';
import 'package:flutter_catelog_page/common/widgets/AppBar/tabBar.dart';
import 'package:flutter_catelog_page/common/widgets/custom_shape/containers/ERounded_Container.dart';
import 'package:flutter_catelog_page/common/widgets/custom_shape/containers/ESearchContainer.dart';
import 'package:flutter_catelog_page/common/widgets/layout/grid_layout.dart';
import 'package:flutter_catelog_page/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_catelog_page/common/widgets/texts/section_heading.dart';
import 'package:flutter_catelog_page/util/constants/colors.dart';
import 'package:flutter_catelog_page/util/constants/image_strings.dart';
import 'package:flutter_catelog_page/util/constants/sizes.dart';
import 'package:flutter_catelog_page/util/helpers/helper_functions.dart';
import '../../../common/widgets/layout/EBrandCard.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: EAppBar(
          showBackArrow: false,
          title: Text(
            "Store",
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium,
          ),
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
                          return EBrandCard(showBorder: false);
                        },
                      ),
                    ],
                  ),
                ),
                bottom: ETabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.all(ESizes.defaultSpace),
                child: Column(
                  children: [

                    ///Brands
                    ERoundedContainer(
                      showBorder: true,
                      borderColor: EColors.darkGrey,
                      backgroundColor: Colors.transparent,
                      margin: const EdgeInsetsGeometry.only(
                        bottom: ESizes.defaultSpace,
                      ),
                      child: Column(
                        children: [
                          const EBrandCard(showBorder: false),

                          Row(
                            children: [
                              ERoundedContainer(
                                height: 100,
                                backgroundColor: dark
                                    ? EColors.darkerGrey
                                    : EColors.light,
                                margin: const EdgeInsetsGeometry.only(
                                  right: ESizes.sm,
                                ),
                                padding: EdgeInsetsGeometry.all(ESizes.md),
                                child: Image(
                                  fit: BoxFit.contain,
                                  image: AssetImage(EImages.productImage3),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    ///Products
                  ],
                ),
              ),
            ],
          ),
        ),
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
