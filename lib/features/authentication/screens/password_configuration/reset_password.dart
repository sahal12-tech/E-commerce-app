import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/util/constants/sizes.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/text_strings.dart';
import '../../../../util/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              Center(
                child: SvgPicture.asset(
                  'assets/Images/Animations/verify_email.svg',
                  width: EHelperFunctions.screenWidth() * 0.6,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).brightness == Brightness.dark
                        ? EColors
                              .accent // Lighter tint for dark mode
                        : EColors.primary,
                    // Darker tint for light mode[cite: 1]
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const SizedBox(height: ESizes.spaceBtwSections),

              Text(
                ETexts.changePasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: ESizes.spaceBtwitems),

              Text(
                ETexts.changePasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.spaceBtwSections),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(ETexts.done),
                ),
              ),
              const SizedBox(height: ESizes.spaceBtwitems,),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(ETexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
