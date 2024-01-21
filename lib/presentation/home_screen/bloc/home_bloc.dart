import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/eightytwo_item_model.dart';
import '../models/topsongs_item_model.dart';
import '../models/editorspicks_item_model.dart';
import 'package:spotify_clone/presentation/home_screen/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            eightytwoItemList: fillEightytwoItemList(),
            topsongsItemList: fillTopsongsItemList(),
            editorspicksItemList: fillEditorspicksItemList())));
  }

  List<EightytwoItemModel> fillEightytwoItemList() {
    return [
      EightytwoItemModel(
          image: ImageConstant.imgScreenShot20211208, text: "1(Remastered)"),
      EightytwoItemModel(
          image: ImageConstant.imgScreenShot20211208105x111,
          text: "Lana Del Rey"),
      EightytwoItemModel(
          image: ImageConstant.imgScreenShot20211208108x111,
          text: "Marvin Gaye")
    ];
  }

  List<TopsongsItemModel> fillTopsongsItemList() {
    return [
      TopsongsItemModel(
          topSongsImage: ImageConstant.imgScreenShot20211207154x153,
          topSongsText: "Your Top Songs 2021"),
      TopsongsItemModel(
          topSongsImage: ImageConstant.imgScreenShot20211207155x155,
          topSongsText: "Your Artists Revealed")
    ];
  }

  List<EditorspicksItemModel> fillEditorspicksItemList() {
    return [
      EditorspicksItemModel(
          image: ImageConstant.imgScreenShot20211207154x154,
          text: "Ed Sheeran, Big Sean, \nJuice WRLD, Post Malone"),
      EditorspicksItemModel(
          image: ImageConstant.imgScreenShot202112071,
          text: "Mitski, Tame Impala, \nGlass Animals, Charli XCX")
    ];
  }
}
