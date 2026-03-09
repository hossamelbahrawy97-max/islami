import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/app_routes.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Color(0xFF202020),
      pages: _pages,
      showBackButton: true,
      showNextButton: true,
      back: const Text("Back", style: TextStyle(color: AppColors.primaryColor)),
      next: const Text("Next", style: TextStyle(color: AppColors.primaryColor)),
      done: const Text(
        "Finish",
        style: TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      onDone: () {
        Navigator.pushReplacementNamed(context, AppRoutes.homeRouteName);
      },
      dotsDecorator: DotsDecorator(
        color: Colors.grey,
        activeColor: AppColors.primaryColor,
        size: const Size(8, 8),
        activeSize: const Size(20, 8),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  List<PageViewModel> get _pages => [
    _buildPage(
      image: 'assets/images/intro1.png',
      title: 'Welcome To Islami App',
      body: '',
    ),
    _buildPage(
      image: 'assets/images/intro2.png',
      title: 'Welcome To Islami',
      body: 'We Are Very Excited To Have You In Our \n Community',
    ),
    _buildPage(
      image: 'assets/images/intro3.png',
      title: 'Reading the Quran',
      body: 'Read, and your Lord is the Most Generous',
    ),
    _buildPage(
      image: 'assets/images/intro4.png',
      title: 'Bearish',
      body: 'Praise the name of your Lord, the Most High',
    ),
    _buildPage(
      image: 'assets/images/intro5.png',

      title: 'Holy Quran Radio',
      body:
          'You can listen to the Holy Quran Radio through the application for free and easily',
    ),
  ];

  PageViewModel _buildPage({
    required String image,
    required String title,
    required String body,
  }) {
    return PageViewModel(
      titleWidget: Text(
        title,
        style: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      bodyWidget: Text(
        body,
        style: const TextStyle(
          color: AppColors.primaryColor,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      image: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          image,
          fit: BoxFit.contain,
          alignment: Alignment.topCenter,
        ),
      ),
      decoration: const PageDecoration(
        imageFlex: 4,
        bodyFlex: 1,
        imagePadding: EdgeInsets.zero,
        bodyPadding: EdgeInsets.only(bottom: 8),

        titlePadding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        pageColor: Color(0xFF202020),
      ),
    );
  }
}
