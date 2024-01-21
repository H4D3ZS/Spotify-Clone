// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [track_view_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TrackViewModel extends Equatable {
  TrackViewModel() {}

  TrackViewModel copyWith() {
    return TrackViewModel();
  }

  @override
  List<Object?> get props => [];
}
