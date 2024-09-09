import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';
import '../../../navigation/navigation_helper.dart';
import '../../shop/create_shop/create_shop_create_account_view.dart';
import '../login/login_view.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isPasswordVisible = ValueNotifier(false);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign Up',
                  style: context.textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                5.height,
                Text(
                  'Hi! Lets create your account.',
                  style: context.textTheme.bodyMedium,
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
                  onPressed: () {},
                  child: const Text('Sign Up'),
                ).space(
                  width: double.infinity,
                ),
                12.height,
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Already have an account? ',
                            style: context.theme.textTheme.labelMedium),
                        TextSpan(
                          text: 'login',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              NavigationHelper.push(context, const LoginView());
                            },
                          style: context.theme.textTheme.titleSmall
                              ?.copyWith(color: context.colorScheme.primary),
                        ),
                      ],
                    ),
                  ),
                ),
                15.height,
                Row(
                  children: [
                    const Expanded(
                      child: Divider(),
                    ),
                    10.width,
                    const Text('OR'),
                    10.width,
                    const Expanded(
                      child: Divider(),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      NavigationHelper.push(
                          context, const CreateShopCreateAccountView());
                    },
                    child: const Text('Create my shop'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
