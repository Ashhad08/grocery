import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';
import '../../../navigation/navigation_helper.dart';
import 'create_or_edit_shop_view.dart';

class CreateShopCreateAccountView extends StatelessWidget {
  const CreateShopCreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isPasswordVisible = ValueNotifier(false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create your shop'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please create your account before setting up your shop.',
                  style: context.textTheme.bodyLarge,
                ),
                40.height,
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
                  keyboardType: TextInputType.emailAddress,
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  decoration: const InputDecoration(
                    hintText: 'Your email',
                  ),
                ),
                25.height,
                ValueListenableBuilder(
                    valueListenable: isPasswordVisible,
                    builder: (context, val, _) {
                      return TextField(
                        obscureText: !val,
                        onTapOutside: (event) =>
                            FocusManager.instance.primaryFocus?.unfocus(),
                        decoration: InputDecoration(
                          hintText: 'Your password',
                          suffixIcon: IconButton(
                            onPressed: () {
                              isPasswordVisible.value =
                                  !isPasswordVisible.value;
                            },
                            icon: val
                                ? const Icon(CupertinoIcons.eye)
                                : const Icon(CupertinoIcons.eye_slash),
                          ),
                        ),
                      );
                    }),
                70.height,
                ElevatedButton(
                  onPressed: () {
                    NavigationHelper.pushReplacement(
                        context, const CreateOrEditShopView());
                  },
                  child: const Row(
                    children: [
                      Expanded(child: Text('Create account')),
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
      ),
    );
  }
}
