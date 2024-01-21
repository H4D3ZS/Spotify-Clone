// ignore_for_file: must_be_immutable

part of 'signup_three_bloc.dart';

/// Represents the state of SignupThree in the application.
class SignupThreeState extends Equatable {
  SignupThreeState({
    this.checkmarkController,
    this.signupThreeModelObj,
  });

  TextEditingController? checkmarkController;

  SignupThreeModel? signupThreeModelObj;

  @override
  List<Object?> get props => [
        checkmarkController,
        signupThreeModelObj,
      ];
  SignupThreeState copyWith({
    TextEditingController? checkmarkController,
    SignupThreeModel? signupThreeModelObj,
  }) {
    return SignupThreeState(
      checkmarkController: checkmarkController ?? this.checkmarkController,
      signupThreeModelObj: signupThreeModelObj ?? this.signupThreeModelObj,
    );
  }
}
