import 'package:bloc/bloc.dart';
import 'package:bloc_counter/bloc/counter_event.dart';
import 'package:bloc_counter/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvents, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>(
      (event, emit) {
        emit(CounterState(counter: state.counter + 1));
      },
    );
    //dresing it
    on<Decrement>(
      (event, emit) {
        if (state.counter > 0) {
          emit(CounterState(counter: state.counter - 1));
        }
      },
    );
  }
}
