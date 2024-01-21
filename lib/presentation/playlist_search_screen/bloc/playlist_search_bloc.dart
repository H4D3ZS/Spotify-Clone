import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:spotify_clone/presentation/playlist_search_screen/models/playlist_search_model.dart';
part 'playlist_search_event.dart';
part 'playlist_search_state.dart';

/// A bloc that manages the state of a PlaylistSearch according to the event that is dispatched to it.
class PlaylistSearchBloc
    extends Bloc<PlaylistSearchEvent, PlaylistSearchState> {
  PlaylistSearchBloc(PlaylistSearchState initialState) : super(initialState) {
    on<PlaylistSearchInitialEvent>(_onInitialize);
  }

  List<ViewhierarchyItemModel> fillViewhierarchyItemList() {
    return [
      ViewhierarchyItemModel(
          image1: ImageConstant.imgScreenShot2021120849x48,
          text1: "Easy",
          text2: "Troye Sivan",
          image2: ImageConstant.imgSettingsGray50001),
      ViewhierarchyItemModel(
          image1: ImageConstant.imgScreenShot2021120848x50,
          text1: "chance with you",
          text2: "mehro",
          image2: ImageConstant.imgSettingsGray50001),
      ViewhierarchyItemModel(image2: ImageConstant.imgMoreGray50001)
    ];
  }

  _onInitialize(
    PlaylistSearchInitialEvent event,
    Emitter<PlaylistSearchState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        playlistSearchModelObj: state.playlistSearchModelObj
            ?.copyWith(viewhierarchyItemList: fillViewhierarchyItemList())));
  }
}
