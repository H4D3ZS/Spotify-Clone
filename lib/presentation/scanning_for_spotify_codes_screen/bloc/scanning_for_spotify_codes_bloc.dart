import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:spotify_clone/presentation/scanning_for_spotify_codes_screen/models/scanning_for_spotify_codes_model.dart';
part 'scanning_for_spotify_codes_event.dart';
part 'scanning_for_spotify_codes_state.dart';

/// A bloc that manages the state of a ScanningForSpotifyCodes according to the event that is dispatched to it.
class ScanningForSpotifyCodesBloc
    extends Bloc<ScanningForSpotifyCodesEvent, ScanningForSpotifyCodesState> {
  ScanningForSpotifyCodesBloc(ScanningForSpotifyCodesState initialState)
      : super(initialState) {
    on<ScanningForSpotifyCodesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScanningForSpotifyCodesInitialEvent event,
    Emitter<ScanningForSpotifyCodesState> emit,
  ) async {}
}
