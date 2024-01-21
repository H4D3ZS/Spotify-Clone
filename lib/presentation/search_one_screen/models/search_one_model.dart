// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'searchlist_item_model.dart';

/// This class defines the variables used in the [search_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchOneModel extends Equatable {
  SearchOneModel({this.searchlistItemList = const []}) {}

  List<SearchlistItemModel> searchlistItemList;

  SearchOneModel copyWith({List<SearchlistItemModel>? searchlistItemList}) {
    return SearchOneModel(
      searchlistItemList: searchlistItemList ?? this.searchlistItemList,
    );
  }

  @override
  List<Object?> get props => [searchlistItemList];
}
