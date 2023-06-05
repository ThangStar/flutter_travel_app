import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitial()) {
    on<OnChangeChip>(_onChangeChip);
  }

  FutureOr<void> _onChangeChip(OnChangeChip event, Emitter<HomeState> emit) {
    emit(HomeState(positionSelected: event.posTap));
  }
}
