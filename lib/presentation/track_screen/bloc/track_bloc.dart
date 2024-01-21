import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:spotify_clone/presentation/track_screen/models/track_model.dart';
part 'track_event.dart';
part 'track_state.dart';

/// A bloc that manages the state of a Track according to the event that is dispatched to it.
class TrackBloc extends Bloc<TrackEvent, TrackState> {
  TrackBloc(TrackState initialState) : super(initialState) {
    on<TrackInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<TrackState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _onInitialize(
    TrackInitialEvent event,
    Emitter<TrackState> emit,
  ) async {
    emit(state.copyWith(radioGroup: ""));
  }
}
