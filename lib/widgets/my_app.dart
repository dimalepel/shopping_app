import 'package:flutter/material.dart';

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
      home: const LoginScreen(),
    );
  }
}
