import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';
import '../../../navigation/navigation_helper.dart';
import '../../shop/create_shop/create_or_edit_shop_view.dart';
import '../../shop/inventory/inventory_view.dart';
import '../../shop/shop_detail_view/shop_detail_view.dart';
import '../edit_profile/edit_profile_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          // child: NoAccountCreatedView(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    50.height,
                    const CircleAvatar(
                      radius: 50,
                    ),
                    10.height,
                    Text(
                      'Ashhad',
                      style: context.textTheme.titleLarge,
                    ),
                    5.height,
                    Text(
                      'ashhad@gmail.com',
                      style: context.textTheme.bodyMedium,
                    ),
                    10.height,
                    ElevatedButton(
                      onPressed: () {
                        NavigationHelper.push(context, const EditProfileView());
                      },
                      child: const Text('Edit Profile'),
                    ),
                    20.height,
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  NavigationHelper.push(context, const CreateOrEditShopView());
                },
                leading: const Icon(Icons.storefront),
                title: const Text('Create shop'),
                trailing: Icon(Icons.adaptive.arrow_forward),
              ),
              const Divider(
                height: 0,
              ),
              ListTile(
                onTap: () {
                  NavigationHelper.push(
                      context,
                      const ShopDetailView(
                        canEdit: true,
                      ));
                },
                leading: const Icon(Icons.storefront),
                title: const Text('Manage shop'),
                trailing: Icon(Icons.adaptive.arrow_forward),
              ),
              const Divider(
                height: 0,
              ),
              ListTile(
                onTap: () {
                  NavigationHelper.push(
                    context,
                    const InventoryView(
                      canAdd: true,
                    ),
                  );
                },
                leading: const Icon(Icons.inventory_2_outlined),
                title: const Text('Inventory'),
                trailing: Icon(Icons.adaptive.arrow_forward),
              ),
              const Divider(
                height: 0,
              ),
              ListTile(
                leading: Icon(Icons.login_outlined,
                    color: context.colorScheme.error),
                title: Text(
                  'Log out',
                  style: TextStyle(color: context.colorScheme.error),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
