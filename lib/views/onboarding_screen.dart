import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shopping_app/views/login_screen.dart';

import '../theme/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var pageDecoration = PageDecoration(
      titleTextStyle: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold
      ),
      bodyTextStyle: const TextStyle(
        fontSize: 19
      ),
      bodyPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: AppColors.white,
      imagePadding: EdgeInsets.zero,
      imageFlex: 3,
      bodyFlex: 2,
      footerFlex: 1
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: AppColors.white,
      pages: [
        PageViewModel(
          title: 'Shop Now',
          body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
          image: Image.asset('assets/images/splash1.png', width: 300,),
          decoration: pageDecoration
        ),
        PageViewModel(
            title: 'Big Discount',
            body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
            image: Image.asset('assets/images/splash2.png', width: 300,),
            decoration: pageDecoration
        ),
        PageViewModel(
            title: 'Free Delivery',
            body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
            image: Image.asset('assets/images/splash3.png', width: 300,),
            decoration: pageDecoration,
            footer: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
              child: ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen())),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  backgroundColor: AppColors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
                child: const Text(
                  'Let\'s Shop',
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
              ),
            )
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text(
        'Back',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: AppColors.orange,
        ),
      ),
      next: Text(
        'Next',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: AppColors.orange,
        ),
      ),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10),
        activeSize: const Size(20, 10),
        activeColor: AppColors.orange,
        color: AppColors.grey,
        spacing: const EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        )
      ),
    );
  }
}
