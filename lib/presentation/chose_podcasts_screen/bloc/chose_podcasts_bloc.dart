import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:spotify_clone/presentation/chose_podcasts_screen/models/chose_podcasts_model.dart';
part 'chose_podcasts_event.dart';
part 'chose_podcasts_state.dart';

/// A bloc that manages the state of a ChosePodcasts according to the event that is dispatched to it.
class ChosePodcastsBloc extends Bloc<ChosePodcastsEvent, ChosePodcastsState> {
  ChosePodcastsBloc(ChosePodcastsState initialState) : super(initialState) {
    on<ChosePodcastsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChosePodcastsInitialEvent event,
    Emitter<ChosePodcastsState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
