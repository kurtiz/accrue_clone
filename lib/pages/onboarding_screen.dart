import 'package:accrue_clone/utilities/theme_colors.dart';
import 'package:accrue_clone/widgets/onboarding_pager.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../utilities/shared_functions.dart';
import '../widgets/login_sheet.dart';
import '../widgets/signup_sheet.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  late int _currentPage = 0;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void goToPage(int pageIndex) {
    _pageController.animateToPage(
      pageIndex,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainThemeColor,
      body: Container(
        padding:
            const EdgeInsets.only(top: 55, bottom: 30, left: 10, right: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Dot Indicator for onboarding Pager
              Column(
                children: [
                  DotsIndicator(
                    dotsCount: 4,
                    position: _currentPage,
                    decorator: const DotsDecorator(
                      color: Colors.transparent,
                      activeColor: Colors.black,
                      activeSize: Size.square(11),
                      size: Size.square(10.5),
                      shape: CircleBorder(side: BorderSide(width: 1)),
                      spacing: EdgeInsets.only(left: 5, right: 5, top: 5),
                    ),
                    onTap: (position) {
                      setState(() {
                        _currentPage = position;
                      });
                      goToPage(position);
                    },
                  ),

                  // margin
                  const SizedBox(
                    height: 45,
                  ),

                  // onboarding screen
                  SizedBox(
                    height: 500,
                    child: PageView(
                      controller: _pageController,
                      children: const [
                        OnboardingPager(
                          // page one
                          imgUrl: "assets/img/onboarding/onboarding_1.png",
                          header: "Send cash to anyone, anywhere",
                          subText:
                              "Send cash to anyone's bank account, mobile money,\n"
                              " MPESA, and more. We're the easiest, cheapest and fastest"
                              " \nit gets.",
                        ),
                        OnboardingPager(
                          // page two
                          imgUrl: "assets/img/onboarding/onboarding_2.png",
                          header: "Boundless spending",
                          subText:
                              "Create a virtual USD card, and spend freely anywhere\n"
                              "Mastercard/Visa debit cards are accepted.",
                        ),
                        OnboardingPager(
                          // page 3
                          imgUrl: "assets/img/onboarding/onboarding_3.png",
                          header: "Earn daily in dollars",
                          subText:
                              "Saving in weak local currencies erodes your wealth day-\n"
                              "in-day—out. Save in dollars and earn above average interest\n"
                              "that your bank account would be jealous Of!",
                        ),
                        OnboardingPager(
                          // page 4
                          imgUrl: "assets/img/onboarding/onboarding_3.png",
                          header: "Invest like a beginner, earn like a pro",
                          subText:
                              "Accrue helps you grow your idle money with dollar\n"
                              "savings, stocks and crypto.",
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // buttons below
              Column(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: secondaryBorderColor,
                          style: BorderStyle.solid,
                        ),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minimumSize:
                            Size(widgetWidthToLeave(context, 0.15), 48)),
                    onPressed: () {
                      _showSignUpBottomSheet(context);
                    },
                    child: const Text(
                      "Create an account",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FilledButton(
                    style: FilledButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minimumSize:
                            Size(widgetWidthToLeave(context, 0.15), 48)),
                    onPressed: () {
                      _showLoginBottomSheet(context);
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showSignUpBottomSheet(context) {
  showModalBottomSheet(
    backgroundColor: const Color(0xFFFFFAF4),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return const SignUpSheet();
      });
}

void _showLoginBottomSheet(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return const LoginSheet();
      });
}

