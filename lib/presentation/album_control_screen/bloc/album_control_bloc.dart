import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:spotify_clone/presentation/album_control_screen/models/album_control_model.dart';
part 'album_control_event.dart';
part 'album_control_state.dart';

/// A bloc that manages the state of a AlbumControl according to the event that is dispatched to it.
class AlbumControlBloc extends Bloc<AlbumControlEvent, AlbumControlState> {
  AlbumControlBloc(AlbumControlState initialState) : super(initialState) {
    on<AlbumControlInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AlbumControlInitialEvent event,
    Emitter<AlbumControlState> emit,
  ) async {}
}
