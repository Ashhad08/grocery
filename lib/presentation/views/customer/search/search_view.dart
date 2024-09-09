import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';
import '../../../elements/product_card.dart';
import '../../../navigation/navigation_helper.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            18.height,
            Row(
              children: [
                IconButton.filled(
                  onPressed: () {
                    NavigationHelper.pop(context);
                  },
                  icon: Icon(
                    Icons.adaptive.arrow_back,
                  ),
                ),
                5.width,
                Expanded(
                  child: Container(
                    height: 56,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
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
                    child: TextField(
                      textInputAction: TextInputAction.search,
                      onSubmitted: (value) {},
                      decoration: InputDecoration(
                        fillColor: context.colorScheme.onTertiary,
                        filled: true,
                        hintText: 'What do you want?',
                        suffixIcon: TextButton(
                            style:
                                TextButton.styleFrom(padding: EdgeInsets.zero),
                            onPressed: () {},
                            child: const Text('Products')),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12)),
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12)),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                ),
                10.width,
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                top: 10,
              ),
              child: Text(
                'Showing 22 results',
                style: context.textTheme.labelLarge,
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 9,
                padding: const EdgeInsets.all(18),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 12,
                  mainAxisExtent: 215,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => const ProductCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
