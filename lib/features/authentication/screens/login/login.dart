import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_catelog_page/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_catelog_page/util/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/styles/ESpacingStyle.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/image_strings.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title and SubTitle
              const ELoginHeader(),

              /// Login Form
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: ESizes.spaceBtwSections,
                ),
                child:
                const ELoginForm(),
              ),

              ///divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? EColors.darkGrey : EColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    ETexts.orSignInWith.capitalize!,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? EColors.darkGrey : EColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: ESizes.spaceBtwSections),

              ///Footer Social Login Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: dark ? EColors.darkGrey : EColors.grey,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        height: ESizes.iconLg,
                        width: ESizes.iconLg,
                        image: AssetImage(EImages.google),
                      ),
                    ),
                  ),
                  const SizedBox(width: ESizes.spaceBtwIcons),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: dark ? EColors.darkGrey : EColors.grey,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        height: ESizes.iconLg,
                        width: ESizes.iconLg,
                        image: AssetImage(EImages.facebook),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

