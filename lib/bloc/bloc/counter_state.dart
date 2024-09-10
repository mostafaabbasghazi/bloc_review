part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class ChangedValue extends CounterState{
  final int newCount;
  ChangedValue({required this.newCount});
}