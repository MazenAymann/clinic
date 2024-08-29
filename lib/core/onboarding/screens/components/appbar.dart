import 'package:clinic/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarOnBoarding extends StatefulWidget {
  const AppBarOnBoarding({
    super.key,
    required this.onSkip,
  });

  final VoidCallback? onSkip;

  @override
  State<AppBarOnBoarding> createState() => _AppBarOnBoardingState();
}

class _AppBarOnBoardingState extends State<AppBarOnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 35),
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Spacer(),
          TextButton(
            onPressed: widget.onSkip,
            child: Text(
              "SKIP",
              style: GoogleFonts.cairo(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: onBoardingSkipColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
