import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
on<Increment>(
      (event, emit) {
        final nowValue = state.count;

        final incValue = nowValue+1;
        return emit(CounterState(count: incValue));
      },
    );




on<Decrement>(
      (event, emit) {
        final nowValue = state.count;

        final decValue = nowValue-1;
        return emit(CounterState(count: decValue));
      },
    );


    // on<CounterEvent>((event, emit) {
    //   // TODO: implement event handler
    // });
  }
}
