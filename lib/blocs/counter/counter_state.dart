import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter;
  final int counter2;

  const CounterState({
    this.counter = 0,
    this.counter2 = 0,
  });

  CounterState copyWith({
    int? counter,
    int? counter2,
  }) =>
      CounterState(
        counter: counter ?? this.counter,
        counter2: counter2 ?? this.counter2,
      );

  @override
  List<Object?> get props => [
        counter,
        counter2,
      ];
}
