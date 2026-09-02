import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_catelog_page/util/constants/sizes.dart';
import 'package:flutter_catelog_page/util/constants/text_strings.dart';
import '../../../../../common/widgets/login_signup/ESocialLogin.dart';
import 'SignupForm.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              const SignupForm(),

              const SizedBox(height: ESizes.spaceBtwSections),

              ///Create Account Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
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
