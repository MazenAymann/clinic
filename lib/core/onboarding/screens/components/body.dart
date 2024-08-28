import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              children: <Widget>[
                Flexible(
                  flex: 85,
                  child: Image.asset(
                    widget.pages[index].imagePath,
                    height: 300.h,
                  ),
                ),
                _displayText(
                  title: widget.pages[index].title,
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
    required String title,
    required String description,
  }) {
    return Expanded(
      flex: 40,
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Text(
            title,
            maxLines: 2,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 22.h,
              height: 1.2,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Text(
              description,
              maxLines: 5,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 15.h,
                height: 1.2,
                wordSpacing: 1.7,
              ),
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
