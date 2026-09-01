import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/constants/text_strings.dart';

class ELoginForm extends StatelessWidget {
  const ELoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
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
    );
  }
}