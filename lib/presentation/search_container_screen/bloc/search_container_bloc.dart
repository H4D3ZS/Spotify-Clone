import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:spotify_clone/presentation/search_container_screen/models/search_container_model.dart';
part 'search_container_event.dart';
part 'search_container_state.dart';

/// A bloc that manages the state of a SearchContainer according to the event that is dispatched to it.
class SearchContainerBloc
    extends Bloc<SearchContainerEvent, SearchContainerState> {
  SearchContainerBloc(SearchContainerState initialState) : super(initialState) {
    on<SearchContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchContainerInitialEvent event,
    Emitter<SearchContainerState> emit,
  ) async {}
}
