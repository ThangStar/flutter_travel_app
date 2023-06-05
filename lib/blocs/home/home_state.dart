part of 'home_bloc.dart';

class HomeState extends Equatable {
  final int positionSelected;
  const HomeState({this.positionSelected = 0});

  @override
  List<Object> get props => [positionSelected];
}

class HomeInitial extends HomeState {
  const HomeInitial();

}
