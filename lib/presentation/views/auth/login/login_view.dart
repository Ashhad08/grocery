import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';
import '../../../navigation/navigation_helper.dart';
import '../signup/signup_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isPasswordVisible = ValueNotifier(false);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Log In',
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                5.height,
                Text(
                  'Welcome back! Log in with your details',
                  style: context.textTheme.bodyMedium,
                ),
                40.height,
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Your email',
                  ),
                ),
                25.height,
                ValueListenableBuilder(
                    valueListenable: isPasswordVisible,
                    builder: (context, val, _) {
                      return TextField(
                        obscureText: !val,
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
                  child: const Text('Login'),
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
                            text: 'Don\'t have an account? ',
                            style: context.theme.textTheme.labelMedium),
                        TextSpan(
                          text: 'Signup',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              NavigationHelper.push(
                                  context, const SignupView());
                            },
                          style: context.theme.textTheme.titleSmall
                              ?.copyWith(color: context.colorScheme.primary),
                        ),
                      ],
                    ),
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
