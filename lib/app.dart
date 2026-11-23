import 'package:flutter/material.dart';
import 'package:grocify/core/themes/theme.dart';
import 'package:grocify/features/auth/presentation/screens/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GrocifyTheme.light,
      // darkTheme: GrocifyTheme.dark,
      // themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
