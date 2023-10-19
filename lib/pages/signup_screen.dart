import "package:accrue_clone/pages/main_page_screen.dart";
import "package:accrue_clone/utilities/routes.dart";
import "package:accrue_clone/utilities/theme_colors.dart";
import "package:accrue_clone/widgets/alert.dart";
import "package:accrue_clone/widgets/main_text_field.dart";
import "package:flutter/material.dart";

import "../utilities/shared_functions.dart";
import "../utilities/text_styles.dart";

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainThemeColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 3, left: 10, bottom: 30, right: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButton(),
                        Text(
                          "Having issues?",
                          style: TextStyle(
                              color: themeOrange,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24, right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Create an account", style: textXL),
                        Text(
                            "Hey there! Sign up with your email to get started.",
                            style: textSubText),
                        SizedBox(height: 35),
                        Text("Your email", style: textNormal),
                        SizedBox(height: 10),
                        MainTextField(hintText: "eg. crewmember@email.com"),
                        SizedBox(height: 25),
                        Text("Your password", style: textNormal),
                        SizedBox(height: 10),
                        MainTextField(
                          hintText: "Enter your password",
                          obscureText: true,
                        ),
                        SizedBox(height: 25),
                        Text("Referral code (optional)", style: textNormal),
                        SizedBox(height: 10),
                        MainTextField(
                          hintText: "Enter your referral code",
                        ),
                        SizedBox(height: 45),
                        Row(
                          children: [
                            Icon(Icons.error_outline_outlined),
                            SizedBox(width: 12),
                            Text(
                              "Password must be more than 8 characters.",
                              style: textNormal,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(Icons.error_outline_outlined),
                            SizedBox(width: 12),
                            Text(
                              "Password must contain a mix of uppercase, "
                              "\nlowercase, numbers and special characters.",
                              style: textNormal,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(Icons.error_outline_outlined),
                            SizedBox(width: 12),
                            Text("I have read and agree to the "),
                            Text(
                              "Terms & Conditions",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 8),
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
                              Size(widgetWidthToLeave(context, 0.15), 50),
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => const Alert());
                          Future.delayed(const Duration(seconds: 5), () {
                            Navigator.of(context).pushReplacement(
                                createAnimatedRoute(const MainPageScreen(),
                                    const Offset(1.0, 0.0)));
                          });
                        },
                        child: const Text("Get Started")),
                    const SizedBox(height: 30)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
