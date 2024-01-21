// ignore_for_file: must_be_immutable

part of 'search_one_bloc.dart';

/// Represents the state of SearchOne in the application.
class SearchOneState extends Equatable {
  SearchOneState({
    this.searchController,
    this.searchOneModelObj,
  });

  TextEditingController? searchController;

  SearchOneModel? searchOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchOneModelObj,
      ];
  SearchOneState copyWith({
    TextEditingController? searchController,
    SearchOneModel? searchOneModelObj,
  }) {
    return SearchOneState(
      searchController: searchController ?? this.searchController,
      searchOneModelObj: searchOneModelObj ?? this.searchOneModelObj,
    );
  }
}
