part of '../../../../blocs/home/home_bloc.dart';

abstract class HomeEvent {
  const HomeEvent();
}

class OnChangeChip extends HomeEvent {
  OnChangeChip({this.posTap = 0});

  int posTap;
}
