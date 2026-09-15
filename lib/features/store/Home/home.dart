import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:flutter_catelog_page/common/widgets/layout/grid_layout.dart';
import 'package:flutter_catelog_page/features/store/Home/widgets/EAppBar.dart';
import 'package:flutter_catelog_page/features/store/Home/widgets/EPromoCarousalSlider.dart';
import 'package:flutter_catelog_page/features/store/Home/widgets/home_categories.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import '../../../common/widgets/custom_shape/containers/EPrimary_Header_Container.dart';
import '../../../common/widgets/custom_shape/containers/ESearchContainer.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../util/constants/colors.dart';
import '../../../util/constants/sizes.dart';
import '../controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimary_Header_Container(
              child: Column(
                children: [
                  ///AppBar
                  EHomeAppBar(),
                  SizedBox(height: ESizes.defaultSpace),

                  ///Search Bar
                  ESearchContainer(text: 'Search in Store'),
                  SizedBox(height: ESizes.spaceBtwSections),

                  ///Categories
                  Padding(
                    padding: const EdgeInsets.only(left: ESizes.defaultSpace),
                    child: Column(
                      children: [
                        ESectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: EColors.white,
                        ),
                        SizedBox(height: ESizes.spaceBtwSections),

                        //Categories scrollable  list view
                        homeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  EPromoCarousalSlider(controller: controller),
                  SizedBox(height: ESizes.spaceBtwSections,),
                  // Vertical product card grid
                  ESectionHeading(
                    title: 'Popular Products',
                    showActionButton: true,
                    textColor: EColors.white,
                    onPressed: () => {},
                  ),
                  SizedBox(height: ESizes.spaceBtwitems),
                  EGridLayout(
                    itemCount: 4, // Show 4 products for demo
                    itemBuilder: (_, index) => const EProductCardVertical(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}