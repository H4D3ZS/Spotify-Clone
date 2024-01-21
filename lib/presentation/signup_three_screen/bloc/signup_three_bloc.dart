import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:spotify_clone/presentation/signup_three_screen/models/signup_three_model.dart';
part 'signup_three_event.dart';
part 'signup_three_state.dart';

/// A bloc that manages the state of a SignupThree according to the event that is dispatched to it.
class SignupThreeBloc extends Bloc<SignupThreeEvent, SignupThreeState> {
  SignupThreeBloc(SignupThreeState initialState) : super(initialState) {
    on<SignupThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignupThreeInitialEvent event,
    Emitter<SignupThreeState> emit,
  ) async {
    emit(state.copyWith(checkmarkController: TextEditingController()));
  }
}
