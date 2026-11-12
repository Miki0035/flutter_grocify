import 'package:flutter/material.dart';
import 'package:grocify/core/themes/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GrocifyTheme.light,
      darkTheme: GrocifyTheme.dark,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Welcome Grocify')),
        body: Center(child: Text('Grocify')),
      ),
    );
  }
}
