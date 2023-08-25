import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopping_app/views/onboarding_screen.dart';

import '../theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen(),)));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.black,
          image: const DecorationImage(
            image: AssetImage('assets/images/splash_shop.jpg'),
            fit: BoxFit.cover,
            opacity: 0.4,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag,
              size: 200,
              color: AppColors.orange,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Flutter Shop App'.toUpperCase(),
              style: TextStyle(
                color: AppColors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
              ),
            ),
          ],
        ),
      ),
    );
  }
}
