import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';
import '../../../elements/phone_text_form_field.dart';

class CreateOrEditShopView extends StatelessWidget {
  const CreateOrEditShopView({super.key, this.isEdit = false});

  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isEdit
            ? const Text('Edit your shop')
            : const Text('Create your shop'),
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
              TextField(
                keyboardType: TextInputType.name,
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                decoration: const InputDecoration(
                  hintText: 'Shop name',
                ),
              ),
              25.height,
              TextField(
                keyboardType: TextInputType.name,
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                decoration: const InputDecoration(
                  hintText: 'Shop manager name',
                ),
              ),
              25.height,
              TextField(
                keyboardType: TextInputType.streetAddress,
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                decoration: const InputDecoration(
                  hintText: 'Shop address',
                ),
              ),
              25.height,
              PhoneNumberTextFormField(
                hintText: 'Shop phone number',
                isRequired: true,
                onSaved: (phoneNumber) {},
              ),
              25.height,
              TextField(
                keyboardType: TextInputType.emailAddress,
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                decoration: const InputDecoration(
                  hintText: 'Shop email',
                ),
              ),
              70.height,
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(
                        child: isEdit ? const Text('Save') : const Text('Create shop')),
                    const Icon(Icons.arrow_forward)
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
