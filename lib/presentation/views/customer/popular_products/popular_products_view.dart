import 'package:flutter/material.dart';

import '../../../elements/product_card.dart';

class PopularProductsView extends StatelessWidget {
  const PopularProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Products'),
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
