import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchlist_item_model.dart';
import 'package:spotify_clone/presentation/search_one_screen/models/search_one_model.dart';
part 'search_one_event.dart';
part 'search_one_state.dart';

/// A bloc that manages the state of a SearchOne according to the event that is dispatched to it.
class SearchOneBloc extends Bloc<SearchOneEvent, SearchOneState> {
  SearchOneBloc(SearchOneState initialState) : super(initialState) {
    on<SearchOneInitialEvent>(_onInitialize);
  }

  List<SearchlistItemModel> fillSearchlistItemList() {
    return [
      SearchlistItemModel(screenShot: ImageConstant.imgScreenShot20211207448x61)
    ];
  }

  _onInitialize(
    SearchOneInitialEvent event,
    Emitter<SearchOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchOneModelObj: state.searchOneModelObj?.copyWith(
      searchlistItemList: fillSearchlistItemList(),
    )));
  }
}
