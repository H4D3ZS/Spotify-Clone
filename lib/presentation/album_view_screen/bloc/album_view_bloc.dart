import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:spotify_clone/presentation/album_view_screen/models/album_view_model.dart';
part 'album_view_event.dart';
part 'album_view_state.dart';

/// A bloc that manages the state of a AlbumView according to the event that is dispatched to it.
class AlbumViewBloc extends Bloc<AlbumViewEvent, AlbumViewState> {
  AlbumViewBloc(AlbumViewState initialState) : super(initialState) {
    on<AlbumViewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AlbumViewInitialEvent event,
    Emitter<AlbumViewState> emit,
  ) async {}
}
