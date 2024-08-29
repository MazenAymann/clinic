import 'package:clinic/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/onboarding_pages_model.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody(
      {super.key, required this.controller, required this.pages});

  final PageController controller;
  final List<OnBoardingModel> pages;

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: widget.controller,
        itemCount: widget.pages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  flex: 85,
                  child: Image.asset(
                    widget.pages[index].imagePath,
                    height: 300.h,
                  ),
                ),
                _displayText(
                  description: widget.pages[index].description,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Expanded _displayText({
    required String description,
  }) {
    return Expanded(
      flex: 40,
      child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            child: SizedBox(
              width: 270.w,
              child: Text(
                description,
                maxLines: 5,
                style: GoogleFonts.cairo(
                  color: onBoardingTextColor,
                  fontSize: 25.h,
                  height: 1.2,
                  wordSpacing: 1.5,
                ),
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
        ],
      ),
    );
  }
}
