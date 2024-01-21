// ignore_for_file: must_be_immutable

part of 'track_bloc.dart';

/// Represents the state of Track in the application.
class TrackState extends Equatable {
  TrackState({
    this.radioGroup = "",
    this.trackModelObj,
  });

  TrackModel? trackModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        trackModelObj,
      ];
  TrackState copyWith({
    String? radioGroup,
    TrackModel? trackModelObj,
  }) {
    return TrackState(
      radioGroup: radioGroup ?? this.radioGroup,
      trackModelObj: trackModelObj ?? this.trackModelObj,
    );
  }
}
