// ignore_for_file: must_be_immutable

part of 'track_view_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrackView widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrackViewEvent extends Equatable {}

/// Event that is dispatched when the TrackView widget is first created.
class TrackViewInitialEvent extends TrackViewEvent {
  @override
  List<Object?> get props => [];
}
