// ignore_for_file: must_be_immutable

part of 'playlist_search_bloc.dart';

/// Represents the state of PlaylistSearch in the application.
class PlaylistSearchState extends Equatable {
  PlaylistSearchState({
    this.searchController,
    this.playlistSearchModelObj,
  });

  TextEditingController? searchController;

  PlaylistSearchModel? playlistSearchModelObj;

  @override
  List<Object?> get props => [
        searchController,
        playlistSearchModelObj,
      ];
  PlaylistSearchState copyWith({
    TextEditingController? searchController,
    PlaylistSearchModel? playlistSearchModelObj,
  }) {
    return PlaylistSearchState(
      searchController: searchController ?? this.searchController,
      playlistSearchModelObj:
          playlistSearchModelObj ?? this.playlistSearchModelObj,
    );
  }
}
