import 'package:bloc/bloc.dart';
import 'package:providerr/example/bloc_example/bloc/counter_events.dart';

class CounterBloc extends Bloc<CounterEvents, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) => emit(state + 1));
    on<CounterDecrementPressed>((event, emit) => emit(state - 1));
  }
}
