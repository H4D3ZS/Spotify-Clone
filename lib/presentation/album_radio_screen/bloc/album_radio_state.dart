// ignore_for_file: must_be_immutable

part of 'album_radio_bloc.dart';

/// Represents the state of AlbumRadio in the application.
class AlbumRadioState extends Equatable {
  AlbumRadioState({this.albumRadioModelObj});

  AlbumRadioModel? albumRadioModelObj;

  @override
  List<Object?> get props => [
        albumRadioModelObj,
      ];
  AlbumRadioState copyWith({AlbumRadioModel? albumRadioModelObj}) {
    return AlbumRadioState(
      albumRadioModelObj: albumRadioModelObj ?? this.albumRadioModelObj,
    );
  }
}
