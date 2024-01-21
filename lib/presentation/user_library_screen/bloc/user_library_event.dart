// ignore_for_file: must_be_immutable

part of 'user_library_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserLibrary widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserLibraryEvent extends Equatable {}

/// Event that is dispatched when the UserLibrary widget is first created.
class UserLibraryInitialEvent extends UserLibraryEvent {
  @override
  List<Object?> get props => [];
}
