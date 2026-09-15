import 'package:flutter/material.dart';
import '../../../../util/constants/sizes.dart';

class EGridLayout extends StatelessWidget {
  const EGridLayout({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.mainAxisExtent = 288,
  });

  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final double mainAxisExtent;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: ESizes.gridViewSpacing,
        crossAxisSpacing: ESizes.gridViewSpacing,
        childAspectRatio: 180 / mainAxisExtent, // Fixed: width/height ratio (180 is card width)
      ),
      itemBuilder: itemBuilder,
    );
  }
}