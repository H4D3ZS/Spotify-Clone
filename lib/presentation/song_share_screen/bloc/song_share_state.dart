// ignore_for_file: must_be_immutable

part of 'song_share_bloc.dart';

/// Represents the state of SongShare in the application.
class SongShareState extends Equatable {
  SongShareState({this.songShareModelObj});

  SongShareModel? songShareModelObj;

  @override
  List<Object?> get props => [
        songShareModelObj,
      ];
  SongShareState copyWith({SongShareModel? songShareModelObj}) {
    return SongShareState(
      songShareModelObj: songShareModelObj ?? this.songShareModelObj,
    );
  }
}
