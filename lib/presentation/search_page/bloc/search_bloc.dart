import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchlinks_item_model.dart';
import '../models/searchlinks1_item_model.dart';
import '../models/searchlinks2_item_model.dart';
import 'package:spotify_clone/presentation/search_page/models/search_model.dart';
part 'search_event.dart';
part 'search_state.dart';

/// A bloc that manages the state of a Search according to the event that is dispatched to it.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
  }

  List<SearchlinksItemModel> fillSearchlinksItemList() {
    return [
      SearchlinksItemModel(
          text: "Pop", text1: "Album", image: ImageConstant.imgCuartetoIbai),
      SearchlinksItemModel(text: "Indie")
    ];
  }

  List<Searchlinks1ItemModel> fillSearchlinks1ItemList() {
    return [
      Searchlinks1ItemModel(newsPolitics: "News & Politics", album: "Album"),
      Searchlinks1ItemModel(newsPolitics: "Comedy", album: "Album")
    ];
  }

  List<Searchlinks2ItemModel> fillSearchlinks2ItemList() {
    return [
      Searchlinks2ItemModel(title: "2021 Wrapped", albumText: "Album"),
      Searchlinks2ItemModel(title: "Podcasts", albumText: "Album"),
      Searchlinks2ItemModel(title: "Made for you", albumText: "Album"),
      Searchlinks2ItemModel(title: "Charts", albumText: "Album")
    ];
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchModelObj: state.searchModelObj?.copyWith(
      searchlinksItemList: fillSearchlinksItemList(),
      searchlinks1ItemList: fillSearchlinks1ItemList(),
      searchlinks2ItemList: fillSearchlinks2ItemList(),
    )));
  }
}
