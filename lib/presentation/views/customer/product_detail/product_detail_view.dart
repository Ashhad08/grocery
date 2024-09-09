import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';
import '../../../elements/review_tile.dart';
import '../../../navigation/navigation_helper.dart';
import '../../shop/shop_detail_view/shop_detail_view.dart';
import '../product_reviews/product_reviews.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key, this.canEdit = false});

  final bool canEdit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg'),
              ),
            ),
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton.filled(
                        onPressed: () {
                          NavigationHelper.pop(context);
                        },
                        icon: Icon(
                          Icons.adaptive.arrow_back,
                        ),
                      ),
                      if (canEdit)
                        IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit,
                          ),
                        ),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: context.colorScheme.primary, width: 2),
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg'),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg'),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg'),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pan cake',
                                style: context.textTheme.titleLarge,
                              ),
                              Text(
                                'Cakes',
                                style: context.textTheme.bodyMedium,
                              )
                            ],
                          ),
                        ),
                        IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                          ),
                        ),
                      ],
                    ),
                    20.height,
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        5.width,
                        Text(
                          '3.99',
                          style: context.textTheme.labelLarge,
                        ),
                        5.width,
                        Text(
                          '(244 Reviews)',
                          style: context.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    20.height,
                    Text(
                      'Product by',
                      style: context.textTheme.titleMedium,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      onTap: () {
                        NavigationHelper.push(context, const ShopDetailView());
                      },
                      title: const Text('Cakes and bakes'),
                      leading: const CircleAvatar(),
                      subtitle: const Text(
                          'Located at : Suite 955 43757 Johns Bridge, East Dan, MS 68638'),
                      trailing: Icon(Icons.adaptive.arrow_forward),
                    ),
                    20.height,
                    Text(
                      'Description',
                      style: context.textTheme.titleMedium,
                    ),
                    10.height,
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: context.textTheme.bodyMedium?.copyWith(
                          color: context.textTheme.bodyMedium?.color?.op(0.7)),
                    ),
                    10.height,
                    Row(
                      children: [
                        Text(
                          'Reviews',
                          style: context.textTheme.titleMedium,
                        ),
                        const Spacer(),
                        TextButton(
                            onPressed: () {
                              NavigationHelper.push(
                                  context, const ProductReviews());
                            },
                            child: const Text('See all'))
                      ],
                    ),
                    ListView.separated(
                      padding: EdgeInsets.zero,
                      separatorBuilder: (context, index) => const Divider(),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => const ReviewTile(),
                      itemCount: 4,
                    ),
                    50.height,
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('\$6.99/kg'),
              ),
            ),
            if(!canEdit)
            30.width,
            if(!canEdit)
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Add to cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
