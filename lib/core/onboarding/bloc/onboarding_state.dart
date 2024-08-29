part of 'onboarding_bloc.dart';

abstract class OnBoardingState extends Equatable {
  const OnBoardingState();
}

class OnNewPagePushed extends OnBoardingState {
  const OnNewPagePushed({
    required this.progressPercentage,
    this.indicatorColor = onBoardingIndicatorColor,
  });

  final double progressPercentage;
  final Color indicatorColor;

  @override
  List<Object> get props => [progressPercentage];
}

class OnFinish extends OnBoardingState {
  const OnFinish({
    required this.progressPercentage,
    this.indicatorColor = Colors.green,
  });

  final double progressPercentage;
  final Color indicatorColor;

  @override
  List<Object> get props => [progressPercentage];
}
