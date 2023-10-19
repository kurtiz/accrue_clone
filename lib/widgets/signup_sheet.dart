import "package:accrue_clone/pages/signup_screen.dart";
import "package:accrue_clone/utilities/theme_colors.dart";
import "package:flutter/material.dart";

import "../utilities/routes.dart";

class SignUpSheet extends StatelessWidget {
  const SignUpSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                FilledButton(
                  style: FilledButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                      backgroundColor: Colors.blueGrey[50]),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Center(
                      child: Icon(
                        size: 30,
                        color: Colors.black87,
                        Icons.close,
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Create Account",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              "Sign up to Accrue",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 45,
            ),
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
                  minimumSize: const Size.fromHeight(60)),
              onPressed: () {
                // pressed Continue with Google
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/img/icons/google_icon.png",
                    width: 45,
                  ),
                  const Text(
                    "Continue with Google",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  const SizedBox(width: 15),
                ],
              ),
            ),
            const SizedBox(height: 10),
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
                  minimumSize: const Size.fromHeight(60)),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(createAnimatedRoute(
                    const SignUpScreen(), const Offset(1.0, 0.0))
                );              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/img/icons/email_icon.png",
                    width: 35,
                  ),
                  const Text(
                    "Continue with Email",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  const SizedBox(width: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}