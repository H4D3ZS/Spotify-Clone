// ignore_for_file: must_be_immutable

part of 'search_container_bloc.dart';

/// Represents the state of SearchContainer in the application.
class SearchContainerState extends Equatable {
  SearchContainerState({this.searchContainerModelObj});

  SearchContainerModel? searchContainerModelObj;

  @override
  List<Object?> get props => [
        searchContainerModelObj,
      ];
  SearchContainerState copyWith(
      {SearchContainerModel? searchContainerModelObj}) {
    return SearchContainerState(
      searchContainerModelObj:
          searchContainerModelObj ?? this.searchContainerModelObj,
    );
  }
}
