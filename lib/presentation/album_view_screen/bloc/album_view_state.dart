// ignore_for_file: must_be_immutable

part of 'album_view_bloc.dart';

/// Represents the state of AlbumView in the application.
class AlbumViewState extends Equatable {
  AlbumViewState({this.albumViewModelObj});

  AlbumViewModel? albumViewModelObj;

  @override
  List<Object?> get props => [
        albumViewModelObj,
      ];
  AlbumViewState copyWith({AlbumViewModel? albumViewModelObj}) {
    return AlbumViewState(
      albumViewModelObj: albumViewModelObj ?? this.albumViewModelObj,
    );
  }
}
