import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';
import '../../../configs/extensions.dart';
import '../../../navigation/navigation_helper.dart';
import '../../auth/login/login_view.dart';
import '../../auth/signup/signup_view.dart';

class NoAccountCreatedView extends StatelessWidget {
  const NoAccountCreatedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Assets.imagesNoAccount,
              height: 300,
              fit: BoxFit.cover,
              width: 300,
            ),
            Text(
              'Hello!',
              style: context.textTheme.titleLarge,
            ),
            Text(
              'Create your account and if you have one login',
              style: context.textTheme.bodyLarge,
            ),
            40.height,
            ElevatedButton(
                    onPressed: () {
                      NavigationHelper.push(context, const LoginView());
                    },
                    child: const Text('Login'))
                .space(width: double.infinity),
            20.height,
            OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      NavigationHelper.push(context, const SignupView());
                    },
                    child: const Text('Signup'))
                .space(width: double.infinity),
          ],
        ),
      ),
    );
  }
}
