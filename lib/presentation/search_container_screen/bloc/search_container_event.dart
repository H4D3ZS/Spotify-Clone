// ignore_for_file: must_be_immutable

part of 'search_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchContainerEvent extends Equatable {}

/// Event that is dispatched when the SearchContainer widget is first created.
class SearchContainerInitialEvent extends SearchContainerEvent {
  @override
  List<Object?> get props => [];
}
