// ignore_for_file: must_be_immutable

part of 'signup_two_bloc.dart';

/// Represents the state of SignupTwo in the application.
class SignupTwoState extends Equatable {
  SignupTwoState({
    this.editTextController,
    this.signupTwoModelObj,
  });

  TextEditingController? editTextController;

  SignupTwoModel? signupTwoModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        signupTwoModelObj,
      ];
  SignupTwoState copyWith({
    TextEditingController? editTextController,
    SignupTwoModel? signupTwoModelObj,
  }) {
    return SignupTwoState(
      editTextController: editTextController ?? this.editTextController,
      signupTwoModelObj: signupTwoModelObj ?? this.signupTwoModelObj,
    );
  }
}
