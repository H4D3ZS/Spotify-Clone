// ignore_for_file: must_be_immutable

part of 'chose_podcasts_bloc.dart';

/// Represents the state of ChosePodcasts in the application.
class ChosePodcastsState extends Equatable {
  ChosePodcastsState({
    this.searchController,
    this.chosePodcastsModelObj,
  });

  TextEditingController? searchController;

  ChosePodcastsModel? chosePodcastsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        chosePodcastsModelObj,
      ];
  ChosePodcastsState copyWith({
    TextEditingController? searchController,
    ChosePodcastsModel? chosePodcastsModelObj,
  }) {
    return ChosePodcastsState(
      searchController: searchController ?? this.searchController,
      chosePodcastsModelObj:
          chosePodcastsModelObj ?? this.chosePodcastsModelObj,
    );
  }
}
