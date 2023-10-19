import "package:accrue_clone/utilities/theme_colors.dart";
import "package:accrue_clone/widgets/main_text_field.dart";
import "package:flutter/material.dart";

import "../utilities/shared_functions.dart";
import "../utilities/text_styles.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainThemeColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Padding(
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
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Welcome back", style: textXL),
                        const Text("Sign in with your email to continue.",
                            style: textSubText),
                        const SizedBox(height: 35),
                        const Text("Your email", style: textNormal),
                        const SizedBox(height: 10),
                        const MainTextField(
                            hintText: "eg. crewmember@email.com"),
                        const SizedBox(height: 25),
                        const Text("Your password", style: textNormal),
                        const SizedBox(height: 10),
                        const MainTextField(
                          hintText: "Enter your password",
                          obscureText: true,
                        ),
                        const SizedBox(height: 45),
                        Center(
                          child: Column(
                            children: [
                              FilledButton(
                                style: FilledButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    minimumSize: Size(
                                        widgetWidthToLeave(context, 0.15), 48)),
                                onPressed: () {},
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(height: 45),
                              const Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: themeOrange,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const Spacer(),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Or log in with",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
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
                          // minimumSize: Size(widgetWidthToLeave(context, 0.15), 50),
                          maximumSize:
                              Size(widgetWidthToLeave(context, 0.15), 50)),
                      onPressed: () {
                        // pressed Continue with Google
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/img/icons/google_icon.png",
                            width: 45,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 60)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
