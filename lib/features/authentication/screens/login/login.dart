import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_catelog_page/features/authentication/screens/login/widgets/login_header.dart';
import '../../../../common/widgets/login_signup/ESocialLogin.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Logo, Title and SubTitle
            const ELoginHeader(),
            /// Login Form
            const ELoginForm(),
            ///divider
            const FormDivider(dividerText: ETexts.orSignUpWith),

            const SizedBox(height: ESizes.spaceBtwSections),
            ///Footer Social Login Buttons
            const ESocialLogin(),
          ],
        ),
      ),
    );
  }
}


