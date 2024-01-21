// ignore_for_file: must_be_immutable

part of 'listening_on_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ListeningOn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListeningOnEvent extends Equatable {}

/// Event that is dispatched when the ListeningOn widget is first created.
class ListeningOnInitialEvent extends ListeningOnEvent {
  @override
  List<Object?> get props => [];
}
