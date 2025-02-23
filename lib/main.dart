import 'package:appwrite_learn_yt/pages/auth/auth_screen.dart';
import 'package:appwrite_learn_yt/services/app_write_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppWriteService().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn App Write',
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: AuthScreen()
    );
  }
}
