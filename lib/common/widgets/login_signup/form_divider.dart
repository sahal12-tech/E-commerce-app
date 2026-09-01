import 'package:flutter/material.dart';
import '../../../util/constants/colors.dart';
import '../../../util/helpers/helper_functions.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? EColors.darkGrey : EColors.grey,
            thickness: 0.8,
            indent: 40,
            endIndent: 10,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? EColors.darkGrey : EColors.grey,
            thickness: 0.8,
            indent: 10,
            endIndent: 40,
          ),
        ),
      ],
    );
  }
}