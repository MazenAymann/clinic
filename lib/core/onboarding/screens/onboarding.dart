import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/onboarding_bloc.dart';
import 'components/on_boarding_scaffold.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  static const routeName = 'onBoarding';

  @override
  State<OnBoardingPage> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (_) => OnBoardingBloc(),
        child: const OnBoardingScaffoldBody(),
      ),
    );
  }
}
