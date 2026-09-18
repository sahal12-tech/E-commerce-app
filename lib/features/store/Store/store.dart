import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/common/widgets/AppBar/appbar.dart';
import 'package:flutter_catelog_page/common/widgets/custom_shape/containers/ESearchContainer.dart';
import 'package:flutter_catelog_page/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_catelog_page/util/constants/colors.dart';
import 'package:flutter_catelog_page/util/constants/sizes.dart';
import 'package:flutter_catelog_page/util/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);
    return Scaffold(
      appBar: EAppBar(
        showBackArrow: false,
        title: Text("Store", style: Theme.of(context).textTheme.headlineMedium),
        actions: [ECartCounterIcon(count: 4, onTap: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScorlled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: dark ? EColors.black : EColors.white,
              expandedHeight: 440,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: EdgeInsetsGeometry.all(ESizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: const [
                    ///Search Bar
                    SizedBox(height: ESizes.spaceBtwitems,),
                    ESearchContainer(text: 'Search in Store',showBorder: true,),
                    SizedBox(height: ESizes.spaceBtwSections,)
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
