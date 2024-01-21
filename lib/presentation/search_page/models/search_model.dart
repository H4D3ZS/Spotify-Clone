// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'searchlinks_item_model.dart';
import 'searchlinks1_item_model.dart';
import 'searchlinks2_item_model.dart';

/// This class defines the variables used in the [search_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel extends Equatable {
  SearchModel({
    this.searchlinksItemList = const [],
    this.searchlinks1ItemList = const [],
    this.searchlinks2ItemList = const [],
  }) {}

  List<SearchlinksItemModel> searchlinksItemList;

  List<Searchlinks1ItemModel> searchlinks1ItemList;

  List<Searchlinks2ItemModel> searchlinks2ItemList;

  SearchModel copyWith({
    List<SearchlinksItemModel>? searchlinksItemList,
    List<Searchlinks1ItemModel>? searchlinks1ItemList,
    List<Searchlinks2ItemModel>? searchlinks2ItemList,
  }) {
    return SearchModel(
      searchlinksItemList: searchlinksItemList ?? this.searchlinksItemList,
      searchlinks1ItemList: searchlinks1ItemList ?? this.searchlinks1ItemList,
      searchlinks2ItemList: searchlinks2ItemList ?? this.searchlinks2ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [searchlinksItemList, searchlinks1ItemList, searchlinks2ItemList];
}
