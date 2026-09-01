import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_catelog_page/features/authentication/screens/login/widgets/login_header.dart';
import '../../../../common/styles/ESpacingStyle.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/image_strings.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/constants/text_strings.dart';
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
              const FormDivider(dividerText: ETexts.orSignUpWith),

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


