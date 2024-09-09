import 'package:flutter/material.dart';

import '../../../elements/product_card.dart';

class FavouriteProductsView extends StatelessWidget {
  const FavouriteProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Favourites'),
      ),
      body: GridView.builder(
        itemCount: 9,
        padding: const EdgeInsets.all(18),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 12,
          mainAxisExtent: 215,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => const ProductCard(),
      ),
    );
  }
}
