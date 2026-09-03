import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/constants/text_strings.dart';
import '../../../../util/helpers/helper_functions.dart';
import '../login/login.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyActions: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.appBarHeight),
          child: Column(
            children: [
              Center(
                child: SvgPicture.asset(
                  'assets/Images/Animations/success_screen.svg',
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
                ETexts.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: ESizes.spaceBtwitems),

              Text(
                ETexts.yourAccountCreatedSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: ESizes.spaceBtwSections),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const LoginScreen()),
                  child: const Text(ETexts.EContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
