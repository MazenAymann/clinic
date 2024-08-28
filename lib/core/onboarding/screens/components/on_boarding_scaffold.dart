import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/onboarding_bloc.dart';
import '../../models/onboarding_pages_model.dart';
import 'appbar.dart';
import 'body.dart';
import 'indicator.dart';

class OnBoardingScaffoldBody extends StatefulWidget {
  const OnBoardingScaffoldBody({super.key});

  @override
  State<OnBoardingScaffoldBody> createState() => _OnBoardingScaffoldState();
}

class _OnBoardingScaffoldState extends State<OnBoardingScaffoldBody> {
  final List<OnBoardingModel> pages = OnBoardingModel.list;
  int pageCount = 0;
  int currentPage = 0;
  bool isDone = false;
  final _controller = PageController();

  @override
  void initState() {
    super.initState();
    pageCount = pages.length - 1;
    _controller.addListener(_onPageMoveListener);
  }

  @override
  void dispose() {
    _controller
      ..removeListener(_onPageMoveListener)
      ..dispose();
    super.dispose();
  }

  void _onPageMoveListener() {
    currentPage = _controller.page?.round() ?? 0;
    context.read<OnBoardingBloc>().add(
          MoveNextPage(
            currentPage: currentPage,
            pageCount: pageCount,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBarOnBoarding(
          onSkip: () => preventOnBoardingShowAgain(context),
        ),
        OnBoardingBody(controller: _controller, pages: pages),
        OnBoardingIndicator(
          onTap: () {
            if (currentPage < pageCount) {
              moveNextPage(++currentPage);
            } else {
              preventOnBoardingShowAgain(context);
            }
          },
        ),
      ],
    );
  }

  void moveNextPage(int page) {
    _controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void preventOnBoardingShowAgain(BuildContext context) {
    // context.read<AuthenticationRepository>().onBoardingDone();
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Login()));
  }
}
