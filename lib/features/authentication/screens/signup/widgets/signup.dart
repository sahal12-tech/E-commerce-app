import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_catelog_page/util/constants/sizes.dart';
import 'package:flutter_catelog_page/util/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/login_signup/ESocialLogin.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(
                ETexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: ESizes.spaceBtwSections),

              /// Form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: ETexts.firstName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        const SizedBox(width: ESizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: ETexts.lastName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: ESizes.spaceBtwInputFields),

                    /// user name
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: ETexts.username,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),

                    const SizedBox(height: ESizes.spaceBtwInputFields),

                    /// Email
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: ETexts.email,
                        prefixIcon: Icon(Iconsax.direct_right),
                      ),
                    ),

                    const SizedBox(height: ESizes.spaceBtwInputFields),

                    /// Phone number
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: ETexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),

                    const SizedBox(height: ESizes.spaceBtwInputFields),

                    ///password
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: ETexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),

                    const SizedBox(height: ESizes.spaceBtwSections),

                    ///Terms and Conditions
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(value: true, onChanged: (value) {}),
                        ),
                        const SizedBox(height: ESizes.spaceBtwitems),

                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '${ETexts.iAgreeTo} ',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: '${ETexts.privacyPolicy} ',
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .apply(
                                      color: dark
                                          ? EColors.white
                                          : EColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? EColors.white
                                          : EColors.primary,
                                    ),
                              ),
                              TextSpan(
                                text: '${ETexts.and} ',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),

                              TextSpan(
                                text: '${ETexts.termsOfUse} ',
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .apply(
                                      color: dark
                                          ? EColors.white
                                          : EColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? EColors.white
                                          : EColors.primary,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
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

              const SizedBox(height: ESizes.spaceBtwSections),

              ///Divider
              const FormDivider(dividerText: ETexts.orSignUpWith),

              const SizedBox(height: ESizes.spaceBtwSections),

              /// Social Sign_up button
              const ESocialLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
