import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/signupfour_item_model.dart';
import 'package:spotify_clone/presentation/signup_four_screen/models/signup_four_model.dart';
part 'signup_four_event.dart';
part 'signup_four_state.dart';

/// A bloc that manages the state of a SignupFour according to the event that is dispatched to it.
class SignupFourBloc extends Bloc<SignupFourEvent, SignupFourState> {
  SignupFourBloc(SignupFourState initialState) : super(initialState) {
    on<SignupFourInitialEvent>(_onInitialize);
  }

  List<SignupfourItemModel> fillSignupfourItemList() {
    return List.generate(2, (index) => SignupfourItemModel());
  }

  _onInitialize(
    SignupFourInitialEvent event,
    Emitter<SignupFourState> emit,
  ) async {
    emit(state.copyWith(checkmarkController: TextEditingController()));
    emit(state.copyWith(
        signupFourModelObj: state.signupFourModelObj
            ?.copyWith(signupfourItemList: fillSignupfourItemList())));
  }
}
