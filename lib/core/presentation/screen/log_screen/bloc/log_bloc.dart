import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'log_event.dart';
part 'log_state.dart';

class LogBloc extends Bloc<LogEvent, LogState> {
  LogBloc() : super(LogInitial()){
    on<SignButtonEvent>(signButtonEvent);
  }


  FutureOr<void> signButtonEvent(SignButtonEvent event, Emitter<LogState> emit) {
    emit(SignButtonState());
  }
}
