part of 'onboarding_bloc.dart';

abstract class OnBoardingEvent extends Equatable {
  const OnBoardingEvent();

  @override
  List<Object> get props => [];
}

class MoveNextPage extends OnBoardingEvent {
  const MoveNextPage({required this.currentPage,required this.pageCount});

  final int currentPage;
  final int pageCount;

  @override
  List<Object> get props => [currentPage,pageCount];
}
