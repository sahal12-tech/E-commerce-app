import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../../common/widgets/custom_shape/containers/circular_container.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/image_strings.dart';
import '../../../../util/constants/sizes.dart';
import '../../controllers/home_controller.dart';
import 'ERoundedBannerImage.dart';

class EPromeCarousalSlider extends StatelessWidget {
  const EPromeCarousalSlider({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            //aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              controller.updatePageIndicator(index);
            },
          ),
          items: [
            //Image 1
            ERoundBannerImage(imageURL: EImages.banner_1, fit: BoxFit.fill),
            //Image 2
            ERoundBannerImage(imageURL: EImages.banner_2, fit: BoxFit.fill),
            //Image 3
            ERoundBannerImage(imageURL: EImages.banner_3, fit: BoxFit.fill),
            //Image 4
            ERoundBannerImage(imageURL: EImages.banner_4, fit: BoxFit.fill),
          ],
        ),
        SizedBox(height: ESizes.spaceBtwitems),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              4,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ECircularContainer(
                  width: 20,
                  height: 4,
                  radius: 12,
                  backgroundColor:
                      controller.carouselCurrentIndex.value == index
                      ? EColors.primary
                      : EColors.grey,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
