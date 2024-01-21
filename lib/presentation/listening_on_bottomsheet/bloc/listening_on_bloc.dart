import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:spotify_clone/presentation/listening_on_bottomsheet/models/listening_on_model.dart';
part 'listening_on_event.dart';
part 'listening_on_state.dart';

/// A bloc that manages the state of a ListeningOn according to the event that is dispatched to it.
class ListeningOnBloc extends Bloc<ListeningOnEvent, ListeningOnState> {
  ListeningOnBloc(ListeningOnState initialState) : super(initialState) {
    on<ListeningOnInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ListeningOnInitialEvent event,
    Emitter<ListeningOnState> emit,
  ) async {}
}
