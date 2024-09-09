import 'package:flutter/material.dart';

import '../../../elements/review_tile.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('232 Reviews'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 18),
        itemBuilder: (context, index) => const ReviewTile(),
        itemCount: 4,
      ),
    );
  }
}
