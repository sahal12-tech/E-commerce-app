import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/authentication/screens/login/login.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyActions: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: [
            const NavigationDestination(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            const NavigationDestination(
              icon: Icon(Iconsax.shop),
              label: 'Shop',
            ),
            const NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: 'Wishlist',
            ),
            const NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.red),
    Container(color: Colors.yellow),
  ];
}
