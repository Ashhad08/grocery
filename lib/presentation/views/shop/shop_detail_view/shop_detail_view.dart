import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';
import '../../../elements/product_card.dart';
import '../../../navigation/navigation_helper.dart';
import '../create_shop/create_or_edit_shop_view.dart';
import '../inventory/inventory_view.dart';

class ShopDetailView extends StatelessWidget {
  const ShopDetailView({super.key, this.canEdit = false});

  final bool canEdit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg'),
              ),
            ),
            padding: const EdgeInsets.all(12),
            alignment: Alignment.topCenter,
            child: SafeArea(
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
                      onPressed: () {
                        NavigationHelper.push(
                            context,
                            const CreateOrEditShopView(
                              isEdit: true,
                            ));
                      },
                      icon: const Icon(
                        Icons.edit,
                      ),
                    ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 18.0, right: 18, left: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cakes and Bakes',
                          style: context.textTheme.titleLarge,
                        ),
                        20.height,
                        Row(
                          children: [
                            Text(
                              'Manager name : ',
                              style: context.textTheme.labelLarge,
                            ),
                            5.width,
                            Expanded(
                              child: Text(
                                'Shafaat',
                                style: context.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                        20.height,
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 20,
                            ),
                            5.width,
                            Text(
                              'Address',
                              style: context.textTheme.titleMedium,
                            ),
                          ],
                        ),
                        10.height,
                        Text(
                          'Suite 955 43757 Johns Bridge, East Dan, MS 68638',
                          style: context.textTheme.bodyMedium?.copyWith(
                              color:
                                  context.textTheme.bodyMedium?.color?.op(0.7)),
                        ),
                        20.height,
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.call,
                                        size: 20,
                                      ),
                                      5.width,
                                      Text(
                                        'Phone number',
                                        style: context.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                  10.height,
                                  Text(
                                    '+44 2739 2973',
                                    style: context.textTheme.bodyMedium
                                        ?.copyWith(
                                            color: context
                                                .textTheme.bodyMedium?.color
                                                ?.op(0.7)),
                                  ),
                                ],
                              ),
                            ),
                            IconButton.filled(
                                onPressed: () {}, icon: const Icon(Icons.call))
                          ],
                        ),
                        20.height,
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.email,
                                        size: 20,
                                      ),
                                      5.width,
                                      Text(
                                        'Email',
                                        style: context.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                  10.height,
                                  Text(
                                    'cakes@bakes.com',
                                    style: context.textTheme.bodyMedium
                                        ?.copyWith(
                                            color: context
                                                .textTheme.bodyMedium?.color
                                                ?.op(0.7)),
                                  ),
                                ],
                              ),
                            ),
                            IconButton.filled(
                                onPressed: () {}, icon: const Icon(Icons.email))
                          ],
                        ),
                        20.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Products',
                              style: context.textTheme.titleMedium,
                            ),
                            TextButton(
                                onPressed: () {
                                  NavigationHelper.push(
                                    context,
                                    const InventoryView(
                                      title: "Shop name products",
                                    ),
                                  );
                                },
                                child: const Text('See all')),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          itemBuilder: (context, index) => const ProductCard(),
                          separatorBuilder: (context, index) => 12.width,
                          itemCount: 6)
                      .space(height: 214, width: double.infinity),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
