import 'package:flutter/material.dart';

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
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
