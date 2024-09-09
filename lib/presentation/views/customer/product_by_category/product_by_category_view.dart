import 'package:flutter/material.dart';

import '../../../elements/product_card.dart';

class ProductByCategoryView extends StatelessWidget {
  const ProductByCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category name products'),
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
