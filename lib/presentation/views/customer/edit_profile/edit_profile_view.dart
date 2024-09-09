import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';
import '../../../elements/phone_text_form_field.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Center(
            child: Column(
              children: [
                40.height,
                const Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Card(
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.edit,
                            size: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                30.height,
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  decoration: const InputDecoration(
                    hintText: 'Your email',
                  ),
                ),
                25.height,
                TextField(
                  keyboardType: TextInputType.name,
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  decoration: const InputDecoration(
                    hintText: 'Your name',
                  ),
                ),
                25.height,
                TextField(
                  keyboardType: TextInputType.name,
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  decoration: const InputDecoration(
                    hintText: 'Your address',
                  ),
                ),
                25.height,
                PhoneNumberTextFormField(
                  hintText: 'Your phone number',
                  isRequired: false,
                  onSaved: (phoneNumber) {},
                ),
                100.height,
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Save'),
                ).space(
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
