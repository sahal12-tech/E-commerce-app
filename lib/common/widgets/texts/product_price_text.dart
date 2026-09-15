import 'package:flutter/material.dart';
import '../../../util/constants/colors.dart';
import '../../../util/constants/sizes.dart';

class EProductPriceText extends StatelessWidget {
  const EProductPriceText({
    super.key,
    required this.price,
    this.currency = '\$',
    this.isSale = false,
    this.maxLines = 1,
  });

  final String price;
  final String currency;
  final bool isSale;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$currency$price',
      style: Theme.of(context).textTheme.headlineMedium!.apply(
        decoration: isSale ? TextDecoration.lineThrough : null,
        decorationColor: EColors.error,
        //decorationThickness: 2,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}