import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:spotify_clone/presentation/track_view_screen/models/track_view_model.dart';
part 'track_view_event.dart';
part 'track_view_state.dart';

/// A bloc that manages the state of a TrackView according to the event that is dispatched to it.
class TrackViewBloc extends Bloc<TrackViewEvent, TrackViewState> {
  TrackViewBloc(TrackViewState initialState) : super(initialState) {
    on<TrackViewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrackViewInitialEvent event,
    Emitter<TrackViewState> emit,
  ) async {}
}
