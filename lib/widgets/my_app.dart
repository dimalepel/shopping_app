import 'package:flutter/material.dart';

import '../views/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce Shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffef6969),
      ),
      home: SplashScreen(),
    );
  }
}
