// ignore_for_file: must_be_immutable

part of 'start_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Start widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class StartEvent extends Equatable {}

/// Event that is dispatched when the Start widget is first created.
class StartInitialEvent extends StartEvent {
  @override
  List<Object?> get props => [];
}
