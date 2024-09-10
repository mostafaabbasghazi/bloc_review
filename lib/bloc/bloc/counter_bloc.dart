import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      int count=0;
      if(event is Increament){
        count=count+1;
        emit(ChangedValue(newCount: count));
        print("emittttted");
      }else if(event is Decreament){
        count=count-1;
        emit(ChangedValue(newCount: count));
      }else{
        count=0;
        emit(ChangedValue(newCount: count));
      }
    });
  }
}
