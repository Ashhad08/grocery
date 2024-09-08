import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'presentation/configs/colors.dart';
import 'presentation/configs/theme.dart';
import 'presentation/views/auth/login/login_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppColors().appColor,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(context),
      themeMode: ThemeMode.light,
      home: const Scaffold(),
    );
  }
}
