import 'package:bloc/bloc.dart';
import 'package:clinic/constants/colors.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const OnNewPagePushed(progressPercentage: 0)) {
    on<MoveNextPage>(_moveNextPage);
  }

  void _moveNextPage(MoveNextPage event, Emitter<OnBoardingState> emit) {
    if (event.currentPage == event.pageCount) {
      emit(const OnFinish(progressPercentage: 1));
      return;
    }
    emit(
      OnNewPagePushed(
        progressPercentage: event.currentPage / event.pageCount,
      ),
    );
  }
}
