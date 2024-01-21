import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:spotify_clone/presentation/choose_artists_screen/models/choose_artists_model.dart';
part 'choose_artists_event.dart';
part 'choose_artists_state.dart';

/// A bloc that manages the state of a ChooseArtists according to the event that is dispatched to it.
class ChooseArtistsBloc extends Bloc<ChooseArtistsEvent, ChooseArtistsState> {
  ChooseArtistsBloc(ChooseArtistsState initialState) : super(initialState) {
    on<ChooseArtistsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseArtistsInitialEvent event,
    Emitter<ChooseArtistsState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
  }
}
