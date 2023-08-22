import 'package:flutter/material.dart';
import 'package:shopping_app/views/navigation_screen.dart';
import 'package:shopping_app/views/onboarding_screen.dart';
import 'package:shopping_app/views/splash_screen.dart';

import '../views/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce Shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 250, 85, 35),
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: const Color.fromARGB(255, 250, 85, 35),
        )
      ),
      home: const NavigationScreen(),
    );
  }
}
