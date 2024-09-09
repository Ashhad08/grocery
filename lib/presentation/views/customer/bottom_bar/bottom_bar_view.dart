import 'package:flutter/material.dart';

import '../favourites_products/favourite_products_view.dart';
import '../home/home_view.dart';
import '../profile/profile_view.dart';

class BottomBarView extends StatelessWidget {
  BottomBarView({super.key});

  final ValueNotifier<int> _index = ValueNotifier(0);
  final _screens = const [
    HomeView(),
    FavouriteProductsView(),
    Scaffold(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: _index,
        builder: (context, value, child) => _screens.elementAt(value),
      ),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: _index,
          builder: (context, value, _) {
            return NavigationBar(
              animationDuration: const Duration(milliseconds: 900),
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(Icons.favorite_border),
                  selectedIcon: Icon(Icons.favorite),
                  label: 'Favourites',
                ),
                NavigationDestination(
                  icon: Icon(Icons.shopping_bag_outlined),
                  selectedIcon: Icon(Icons.shopping_bag),
                  label: 'Orders',
                ),
                NavigationDestination(
                  icon: Icon(Icons.person_outline),
                  selectedIcon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              selectedIndex: value,
              onDestinationSelected: (val) {
                _index.value = val;
              },
            );
          }),
    );
  }
}
