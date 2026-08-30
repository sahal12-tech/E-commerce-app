import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/util/contants/text_strings.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/styles/ESpacingStyle.dart';
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
                    image: AssetImage(dark ? EImages.lightAppLogo : EImages.darkAppLogo),
                  ),
                  Text(ETexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: ESizes.sm),
                  Text(ETexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              /// Login Form
              Form(child: Column(
                children: [
                  ///Email
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: ETexts.email
                    ),
                  ),

                  const SizedBox(height: ESizes.spaceBtwInputFields,),

                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: ETexts.password,
                        suffixIcon: Icon(Iconsax.eye)
                    ),
                  )
                ],
              ),
              )

            ],
          ),
        )
      ),
    );
  }
}
