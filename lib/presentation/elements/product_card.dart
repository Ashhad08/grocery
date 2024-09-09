import 'package:flutter/material.dart';

import '../configs/extensions.dart';
import '../navigation/navigation_helper.dart';
import '../views/customer/product_detail/product_detail_view.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationHelper.push(context, const ProductDetailView());
      },
      child: Card(
        elevation: 8,
        shadowColor: context.colorScheme.onSurface.withOpacity(0.3),
        surfaceTintColor: context.colorScheme.onTertiary,
        color: context.colorScheme.onTertiary,
        margin: const EdgeInsets.only(bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg')),
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(
                        context.theme.cardTheme.shape?.dimensions.vertical ??
                            12)),
              ),
              alignment: Alignment.topRight,
              child: IconButton(
                style: IconButton.styleFrom(
                    backgroundColor:
                        context.colorScheme.error.withOpacity(0.2)),
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: context.colorScheme.error,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pan cake',
                      style: context.textTheme.titleMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    5.height,
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: '\$6.99',
                              style: context.textTheme.labelLarge?.copyWith(
                                  color: context.colorScheme.primary,
                                  fontWeight: FontWeight.w600),
                              children: [
                                TextSpan(
                                  text: '/kg',
                                  style: context.textTheme.labelMedium
                                      ?.copyWith(
                                          color: context
                                              .textTheme.labelMedium?.color
                                              ?.op(0.5)),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              '⭐ 4.99',
                              style: context.textTheme.labelLarge?.copyWith(
                                color: context.textTheme.labelLarge?.color
                                    ?.op(0.7),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ).space(
        width: 170,
      ),
    );
  }
}
