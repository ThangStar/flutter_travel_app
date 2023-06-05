import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'near_me_event.dart';
part 'near_me_state.dart';

class NearMeBloc extends Bloc<NearMeEvent, NearMeState> {
  NearMeBloc() : super(NearMeInitial()) {
    on<NearMeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
