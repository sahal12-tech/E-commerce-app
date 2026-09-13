import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/features/store/Home/widgets/EAppBar.dart';
import 'package:flutter_catelog_page/features/store/Home/widgets/ERoundedBannerImage.dart';
import 'package:flutter_catelog_page/features/store/Home/widgets/home_categories.dart';
import '../../../common/widgets/custom_shape/containers/EPrimary_Header_Container.dart';
import '../../../common/widgets/custom_shape/containers/ESearchContainer.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../util/constants/colors.dart';
import '../../../util/constants/image_strings.dart';
import '../../../util/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: ERoundBannerImage(
                imageURL: EImages.banner_1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
