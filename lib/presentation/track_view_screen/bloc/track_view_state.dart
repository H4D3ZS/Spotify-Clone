// ignore_for_file: must_be_immutable

part of 'track_view_bloc.dart';

/// Represents the state of TrackView in the application.
class TrackViewState extends Equatable {
  TrackViewState({this.trackViewModelObj});

  TrackViewModel? trackViewModelObj;

  @override
  List<Object?> get props => [
        trackViewModelObj,
      ];
  TrackViewState copyWith({TrackViewModel? trackViewModelObj}) {
    return TrackViewState(
      trackViewModelObj: trackViewModelObj ?? this.trackViewModelObj,
    );
  }
}
