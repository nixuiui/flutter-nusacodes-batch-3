import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nusacode_flutter_3/blocs/counter/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());

  void increment() {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void increment2() {
    emit(state.copyWith(counter2: state.counter2 + 1));
  }
}
