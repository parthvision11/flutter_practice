import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_practice/home/bloc/counter_event.dart';
import 'package:flutter_practice/home/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<IncrementCounter>((event, emit) {
      emit(CounterState(state.counter + 1));
    });
    on<DecrementCounter>((event, emit) {
      emit(CounterState(state.counter - 1));
    });
  }
}
