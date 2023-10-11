import 'package:flutter/material.dart';

class OnboardingPager extends StatelessWidget {
  final String imgUrl, header, subText;
  const OnboardingPager(
      {super.key,
      required this.imgUrl,
      required this.header,
      required this.subText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            imgUrl,
            width: 198,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            header,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            subText,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[600]),
          )
        ],
      ),
    );
  }
}
