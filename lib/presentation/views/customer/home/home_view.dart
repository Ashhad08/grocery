import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';
import '../../../elements/product_card.dart';
import '../../../navigation/navigation_helper.dart';
import '../cart/cart_view.dart';
import '../categories/categories_view.dart';
import '../made_for_you/made_for_you_view.dart';
import '../popular_products/popular_products_view.dart';
import '../search/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 6.0),
                child: CircleAvatar(
                  radius: 23,
                ),
              ),
              10.width,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  5.height,
                  Text(
                    'Welcome!',
                    style: context.textTheme.labelLarge?.copyWith(
                        color: context.textTheme.labelLarge?.color
                            ?.withOpacity(0.5)),
                  ),
                  const Text('Ashhad'),
                  5.height,
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
              style: IconButton.styleFrom(
                backgroundColor: context.colorScheme.primary,
                foregroundColor: context.colorScheme.onTertiary,
              ),
              onPressed: () {
                NavigationHelper.push(context, const CartView());
              },
              icon: const Icon(Icons.shopping_cart)),
          10.width,
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  NavigationHelper.push(context, const SearchView());
                },
                child: Container(
                  height: 56,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: context.colorScheme.onTertiary,
                    boxShadow: [
                      BoxShadow(
                          color:
                              context.colorScheme.onSurface.withOpacity(0.02),
                          spreadRadius: 16,
                          blurRadius: 6,
                          offset: const Offset(0, 2)),
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: context.textTheme.bodyMedium?.color?.op(0.5),
                      ),
                      12.width,
                      Expanded(
                        child: Text(
                          'What do you want?',
                          style: context.textTheme.bodyMedium?.copyWith(
                              color:
                                  context.textTheme.bodyMedium?.color?.op(0.5)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              12.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Made for you',
                        style: context.textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: TextButton(
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          onPressed: () {
                            NavigationHelper.push(
                                context, const MadeForYouView());
                          },
                          child: const Text('See all')),
                    )
                  ],
                ),
              ),
              10.height,
              ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      itemBuilder: (context, index) => const ProductCard(),
                      separatorBuilder: (context, index) => 12.width,
                      itemCount: 6)
                  .space(height: 214, width: double.infinity),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Categories',
                        style: context.textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: TextButton(
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          onPressed: () {
                            NavigationHelper.push(
                                context, const CategoriesView());
                          },
                          child: const Text('See all')),
                    )
                  ],
                ),
              ),
              ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                      ),
                      itemBuilder: (context, index) => Column(
                            children: [
                              Card(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg'))),
                                ),
                              ),
                              Text(
                                'Vegetables',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: context.textTheme.bodyMedium,
                              )
                            ],
                          ),
                      separatorBuilder: (context, index) => 12.width,
                      itemCount: 6)
                  .space(height: 80, width: double.infinity),
              10.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Popular',
                        style: context.textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: TextButton(
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          onPressed: () {
                            NavigationHelper.push(
                                context, const PopularProductsView());
                          },
                          child: const Text('See all')),
                    )
                  ],
                ),
              ),
              10.height,
              ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      itemBuilder: (context, index) => const ProductCard(),
                      separatorBuilder: (context, index) => 12.width,
                      itemCount: 6)
                  .space(height: 214, width: double.infinity)
            ],
          ),
        ),
      ),
    );
  }
}
