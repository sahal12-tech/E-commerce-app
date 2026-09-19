
import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart';
import '../../../util/device/device_utility.dart';
import '../../../util/helpers/helper_functions.dart';

class ETabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to tabs you have to wrap them in Material widget.
  /// To do that we need [PreferredSized] Widget and that's why created custom class. [PreferredSizeWidget]
  const ETabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isdarkMode(context);
    return Material(
      color: dark ? EColors.black : EColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: EColors.primary,
        labelColor: dark ? EColors.white : EColors.primary,
        unselectedLabelColor: EColors.darkGrey,
      ), // TabBar
    ); // Material
  }

  @override
  Size get preferredSize => Size.fromHeight(EDeviceUtils.getAppBarHeight());
}