import "package:accrue_clone/pages/login_screen.dart";
import "package:accrue_clone/utilities/routes.dart";
import "package:accrue_clone/utilities/text_styles.dart";
import "package:accrue_clone/utilities/theme_colors.dart";
import "package:flutter/material.dart";

class LoginSheet extends StatelessWidget {
  const LoginSheet({super.key});

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
              "Welcome back",
              style: textXL,
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              "Login to your Accrue Account",
              style: textSubText,
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
                    "Login with Google",
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
                    const LoginScreen(), const Offset(1.0, 0.0))
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/img/icons/email_icon.png",
                    width: 35,
                  ),
                  const Text(
                    "Login with Email",
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
