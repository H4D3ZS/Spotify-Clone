import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:spotify_clone/presentation/start_screen/models/start_model.dart';
part 'start_event.dart';
part 'start_state.dart';

/// A bloc that manages the state of a Start according to the event that is dispatched to it.
class StartBloc extends Bloc<StartEvent, StartState> {
  StartBloc(StartState initialState) : super(initialState) {
    on<StartInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StartInitialEvent event,
    Emitter<StartState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.homeScreen,
      );
    });
  }
}
