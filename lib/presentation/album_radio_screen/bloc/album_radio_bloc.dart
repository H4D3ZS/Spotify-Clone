import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:spotify_clone/presentation/album_radio_screen/models/album_radio_model.dart';
part 'album_radio_event.dart';
part 'album_radio_state.dart';

/// A bloc that manages the state of a AlbumRadio according to the event that is dispatched to it.
class AlbumRadioBloc extends Bloc<AlbumRadioEvent, AlbumRadioState> {
  AlbumRadioBloc(AlbumRadioState initialState) : super(initialState) {
    on<AlbumRadioInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AlbumRadioInitialEvent event,
    Emitter<AlbumRadioState> emit,
  ) async {
    emit(state.copyWith(
        albumRadioModelObj: state.albumRadioModelObj
            ?.copyWith(userprofileItemList: fillUserprofileItemList())));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          titleText: "Troubled Paradise", artistText: "Slayyter"),
      UserprofileItemModel(
          titleText: "Walk Like a Man",
          artistText: "Frankie Valli & The Four Seasons"),
      UserprofileItemModel(titleText: "Elenore", artistText: "The Turtles"),
      UserprofileItemModel(titleText: "Hey Moon", artistText: "John Maus"),
      UserprofileItemModel(titleText: "home with you", artistText: "FKA twigs"),
      UserprofileItemModel(
          titleText: "Mercurial World", artistText: "Magdalena Bay"),
      UserprofileItemModel(titleText: "Hound Dog", artistText: "Elvis Presley")
    ];
  }
}
