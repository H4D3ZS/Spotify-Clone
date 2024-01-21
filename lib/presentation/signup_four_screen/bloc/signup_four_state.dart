// ignore_for_file: must_be_immutable

part of 'signup_four_bloc.dart';

/// Represents the state of SignupFour in the application.
class SignupFourState extends Equatable {
  SignupFourState({
    this.checkmarkController,
    this.signupFourModelObj,
  });

  TextEditingController? checkmarkController;

  SignupFourModel? signupFourModelObj;

  @override
  List<Object?> get props => [
        checkmarkController,
        signupFourModelObj,
      ];
  SignupFourState copyWith({
    TextEditingController? checkmarkController,
    SignupFourModel? signupFourModelObj,
  }) {
    return SignupFourState(
      checkmarkController: checkmarkController ?? this.checkmarkController,
      signupFourModelObj: signupFourModelObj ?? this.signupFourModelObj,
    );
  }
}
