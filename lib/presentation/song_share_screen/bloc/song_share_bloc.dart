import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:spotify_clone/presentation/song_share_screen/models/song_share_model.dart';
part 'song_share_event.dart';
part 'song_share_state.dart';

/// A bloc that manages the state of a SongShare according to the event that is dispatched to it.
class SongShareBloc extends Bloc<SongShareEvent, SongShareState> {
  SongShareBloc(SongShareState initialState) : super(initialState) {
    on<SongShareInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SongShareInitialEvent event,
    Emitter<SongShareState> emit,
  ) async {}
}
