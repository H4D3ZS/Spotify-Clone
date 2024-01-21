// ignore_for_file: must_be_immutable

part of 'choose_artists_bloc.dart';

/// Represents the state of ChooseArtists in the application.
class ChooseArtistsState extends Equatable {
  ChooseArtistsState({
    this.searchController,
    this.chooseArtistsModelObj,
  });

  TextEditingController? searchController;

  ChooseArtistsModel? chooseArtistsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        chooseArtistsModelObj,
      ];
  ChooseArtistsState copyWith({
    TextEditingController? searchController,
    ChooseArtistsModel? chooseArtistsModelObj,
  }) {
    return ChooseArtistsState(
      searchController: searchController ?? this.searchController,
      chooseArtistsModelObj:
          chooseArtistsModelObj ?? this.chooseArtistsModelObj,
    );
  }
}
