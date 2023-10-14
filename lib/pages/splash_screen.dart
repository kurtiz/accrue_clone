import 'package:flutter/material.dart';

import 'onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => const OnboardingScreen(),
          )
      );
    });
    return Scaffold(
      backgroundColor: const Color(0xFFFFFAF4),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            width: 150,
              child: Image.asset("assets/img/brand/logo.png")
          ),
        ),
      ),
    );
  }
}
