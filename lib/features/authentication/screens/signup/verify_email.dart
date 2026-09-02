import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/features/authentication/screens/login/login.dart';
import 'package:flutter_catelog_page/util/constants/text_strings.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

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
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              ///Image Svg
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

              ///Title and SubTitle
              Text(
                ETexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.spaceBtwitems),

              Text(
                'support@e-commerceApp.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.spaceBtwitems),

              Text(
                ETexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              const SizedBox(height: ESizes.spaceBtwSections),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(ETexts.EContinue),
                ),
              ),
              const SizedBox(height: ESizes.spaceBtwitems),

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
