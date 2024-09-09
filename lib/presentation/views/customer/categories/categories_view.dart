import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';
import '../../../navigation/navigation_helper.dart';
import '../product_by_category/product_by_category_view.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: GridView.builder(
        itemCount: 9,
        padding: const EdgeInsets.all(18),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 12,
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            mainAxisExtent: 130),
        itemBuilder: (context, index) => ElevatedButton(
          style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
          onPressed: () {
            NavigationHelper.push(context, const ProductByCategoryView());
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg'),
                    ),
                  ),
                ),
                5.height,
                const Text(
                  'Vegetable',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
