import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/common/widgets/AppBar/appbar.dart';
import 'package:flutter_catelog_page/common/widgets/products/cart/cart_menu_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        showBackArrow: false,
        title: Text("Store", style: Theme.of(context).textTheme.headlineMedium,),
        actions: [ECartCounterIcon(count: 4, onTap: () {})],
      ),
    body: NestedScrollView(headerSliverBuilder:(_,innerBoxIsScorlled) {
      return [
        SliverAppBar(

        )
      ];
    }, body: Container()),
    );
  }
}
