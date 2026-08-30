import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/util/contants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/styles/ESpacingStyle.dart';
import '../../../../util/contants/colors.dart';
import '../../../../util/contants/image_strings.dart';
import '../../../../util/contants/sizes.dart';
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      dark ? EImages.lightAppLogo : EImages.darkAppLogo,
                    ),
                  ),
                  Text(
                    ETexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: ESizes.sm),
                  Text(
                    ETexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              /// Login Form
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: ESizes.spaceBtwSections,
                ),
                child: Form(
                  child: Column(
                    children: [
                      ///Email
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: ETexts.email,
                        ),
                      ),

                      const SizedBox(height: ESizes.spaceBtwInputFields),

                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: ETexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: ESizes.spaceBtwInputFields / 2),

                      ///remember me & Forgot Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ///Remember Me
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(ETexts.rememberMe),
                            ],
                          ),

                          ///Forgot Password
                          TextButton(
                            onPressed: () {},
                            child: Text(ETexts.forgetPassword),
                          ),
                        ],
                      ),
                      const SizedBox(height: ESizes.spaceBtwSections),

                      ///SignIn button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(ETexts.signIn),
                        ),
                      ),

                      const SizedBox(height: ESizes.spaceBtwSections),

                      ///Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(ETexts.createAccount),
                        ),
                      ),
                    ],
                  ),
                ),
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
