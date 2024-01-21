import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile1_item_model.dart';
import 'package:spotify_clone/presentation/library_page/models/library_model.dart';
part 'library_event.dart';
part 'library_state.dart';

/// A bloc that manages the state of a Library according to the event that is dispatched to it.
class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  LibraryBloc(LibraryState initialState) : super(initialState) {
    on<LibraryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibraryInitialEvent event,
    Emitter<LibraryState> emit,
  ) async {
    emit(state.copyWith(
        libraryModelObj: state.libraryModelObj?.copyWith(
      userprofile1ItemList: fillUserprofile1ItemList(),
    )));
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          favorite: ImageConstant.imgFavoritePrimary,
          likedSongs: "Liked Songs",
          playlistImage: ImageConstant.imgSettingsGreenA7000213x8,
          playlistText: "Playlist ",
          songsCount: "58 songs"),
      Userprofile1ItemModel(likedSongs: "Lana Del Rey"),
      Userprofile1ItemModel(likedSongs: "Front Left"),
      Userprofile1ItemModel(likedSongs: "Marvin Gaye")
    ];
  }
}
