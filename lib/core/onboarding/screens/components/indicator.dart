import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/onboarding_bloc.dart';

class OnBoardingIndicator extends StatefulWidget {
  const OnBoardingIndicator({
    super.key,
    required this.onTap,
  });

  final GestureTapCallback? onTap;

  @override
  State<OnBoardingIndicator> createState() => _OnBoardingIndicatorState();
}

class _OnBoardingIndicatorState extends State<OnBoardingIndicator> {
  double? progressPercentage;
  Color? indicatorColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      margin: const EdgeInsets.only(bottom: 40),
      child: Stack(
        children: <Widget>[
          SizedBox(
            width: 90,
            height: 90,
            child: BlocBuilder<OnBoardingBloc, OnBoardingState>(
              builder: (context, state) {
                if (state is OnNewPagePushed) {
                  progressPercentage = state.progressPercentage;
                  indicatorColor = state.indicatorColor;
                }
                if (state is OnFinish) {
                  progressPercentage = state.progressPercentage;
                  indicatorColor = state.indicatorColor;
                }
                return TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0.0, end: progressPercentage),
                  duration: const Duration(milliseconds: 300),
                  builder: (_, value, child) {
                    return CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(indicatorColor),
                      value: value,
                      strokeWidth: 1.9,
                    );
                  },
                );
              },
            ),
          ),
          Align(
            child: GestureDetector(
              onTap: widget.onTap,
              child: BlocBuilder<OnBoardingBloc, OnBoardingState>(
                builder: (context, state) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      color: indicatorColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: state is OnFinish
                        ? const Icon(
                            Icons.check,
                            size: 32,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
