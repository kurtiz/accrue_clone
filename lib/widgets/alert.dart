import 'package:accrue_clone/utilities/theme_colors.dart';
import 'package:flutter/material.dart';

import '../utilities/text_styles.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: mainThemeColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      insetPadding: const EdgeInsets.symmetric(horizontal: 128),
      content: const SizedBox(
        height: 30,
        child: Row(
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text("Signing In"),
          ],
        ),
      ),
    );
  }
}
