// ignore_for_file: must_be_immutable

part of 'album_control_bloc.dart';

/// Represents the state of AlbumControl in the application.
class AlbumControlState extends Equatable {
  AlbumControlState({this.albumControlModelObj});

  AlbumControlModel? albumControlModelObj;

  @override
  List<Object?> get props => [
        albumControlModelObj,
      ];
  AlbumControlState copyWith({AlbumControlModel? albumControlModelObj}) {
    return AlbumControlState(
      albumControlModelObj: albumControlModelObj ?? this.albumControlModelObj,
    );
  }
}
