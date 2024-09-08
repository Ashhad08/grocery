import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';

class CreateShopView extends StatelessWidget {
  const CreateShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create your shop'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image,
                        size: 30,
                        color: context.colorScheme.primary,
                      ),
                      10.height,
                      Text(
                        'Click to add shop Logo',
                        style: context.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
              ).space(height: 200, width: double.infinity),
              30.height,
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Shop name',
                ),
              ),
              25.height,
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Shop manager name',
                ),
              ),
              25.height,
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Shop phone number',
                ),
              ),
              25.height,
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Shop email',
                ),
              ),
              70.height,
              ElevatedButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Expanded(child: Text('Create shop')),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ).space(
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
