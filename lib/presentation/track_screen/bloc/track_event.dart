// ignore_for_file: must_be_immutable

part of 'track_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Track widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrackEvent extends Equatable {}

/// Event that is dispatched when the Track widget is first created.
class TrackInitialEvent extends TrackEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends TrackEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
