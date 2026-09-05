import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: NavigationBar(

        height: 80,
        destinations: [
          const NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          const NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
          const NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          const NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      ),
    );
  }
}
