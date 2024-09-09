import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../configs/extensions.dart';
import '../../../navigation/navigation_helper.dart';
import '../product_detail/product_detail_view.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView.separated(
              separatorBuilder: (context, index) => 8.height,
              padding: const EdgeInsets.only(
                  top: 14, left: 14, bottom: 244, right: 14),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  NavigationHelper.push(context, const ProductDetailView());
                },
                child: Card(
                  elevation: 0.2,
                  surfaceTintColor: context.colorScheme.onTertiary,
                  color: context.colorScheme.onTertiary,
                  child: Slidable(
                    closeOnScroll: true,
                    key: ValueKey(index),
                    endActionPane: ActionPane(
                      dismissible: DismissiblePane(onDismissed: () {}),
                      motion: const BehindMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {},
                          borderRadius: const BorderRadius.horizontal(
                              right: Radius.circular(12)),
                          icon: Icons.delete,
                          backgroundColor:
                              context.colorScheme.error.withOpacity(0.3),
                          autoClose: true,
                          foregroundColor: context.colorScheme.error,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
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
                          20.width,
                          Expanded(
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
                                RichText(
                                  text: TextSpan(
                                    text: '\$6.99',
                                    style: context.textTheme.labelLarge
                                        ?.copyWith(
                                            color: context.colorScheme.primary,
                                            fontWeight: FontWeight.w600),
                                    children: [
                                      TextSpan(
                                        text: '/kg',
                                        style: context.textTheme.labelMedium
                                            ?.copyWith(
                                                color: context.textTheme
                                                    .labelMedium?.color
                                                    ?.op(0.5)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          10.width,
                          Column(
                            children: [
                              IconButton.filled(
                                      style: IconButton.styleFrom(
                                          padding: EdgeInsets.zero),
                                      onPressed: () {},
                                      icon: const Icon(Icons.remove))
                                  .space(height: 30, width: 30),
                              5.height,
                              Text(
                                "1 KG",
                                style: context.textTheme.labelMedium,
                              ),
                              5.height,
                              IconButton.filled(
                                      style: IconButton.styleFrom(
                                          padding: EdgeInsets.zero),
                                      onPressed: () {},
                                      icon: const Icon(Icons.add))
                                  .space(height: 30, width: 30),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              itemCount: 2,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 244,
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: context.colorScheme.onTertiary,
                boxShadow: [
                  BoxShadow(
                      color: context.colorScheme.onSurface.withOpacity(0.03),
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: const Offset(0, -2)),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shopping cost',
                          style: context.textTheme.bodyLarge?.copyWith(
                              color:
                                  context.textTheme.bodyLarge?.color?.op(0.7)),
                        ),
                        Text(
                          '\$12.56',
                          style: context.textTheme.labelLarge
                              ?.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery cost',
                          style: context.textTheme.bodyLarge?.copyWith(
                              color:
                                  context.textTheme.bodyLarge?.color?.op(0.7)),
                        ),
                        Text(
                          '\$5.56',
                          style: context.textTheme.labelLarge
                              ?.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total cost',
                          style: context.textTheme.labelLarge
                              ?.copyWith(fontSize: 18),
                        ),
                        Text(
                          '\$5.56',
                          style: context.textTheme.labelLarge
                              ?.copyWith(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  30.height,
                  ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))
                      .space(width: double.infinity)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
