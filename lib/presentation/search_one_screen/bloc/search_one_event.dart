// ignore_for_file: must_be_immutable

part of 'search_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchOneEvent extends Equatable {}

/// Event that is dispatched when the SearchOne widget is first created.
class SearchOneInitialEvent extends SearchOneEvent {
  @override
  List<Object?> get props => [];
}
