import 'package:flutter/material.dart';

import '../../../elements/product_card.dart';

class InventoryView extends StatelessWidget {
  const InventoryView({super.key, this.title, this.canAdd = false});

  final String? title;
  final bool canAdd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? "Inventory"),
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
      floatingActionButton: canAdd
          ? FloatingActionButton.extended(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add'),
            )
          : null,
    );
  }
}
