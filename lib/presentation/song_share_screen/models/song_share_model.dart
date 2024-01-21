// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [song_share_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SongShareModel extends Equatable {
  SongShareModel() {}

  SongShareModel copyWith() {
    return SongShareModel();
  }

  @override
  List<Object?> get props => [];
}
