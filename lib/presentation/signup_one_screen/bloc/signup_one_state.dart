// ignore_for_file: must_be_immutable

part of 'signup_one_bloc.dart';

/// Represents the state of SignupOne in the application.
class SignupOneState extends Equatable {
  SignupOneState({
    this.editTextController,
    this.signupOneModelObj,
  });

  TextEditingController? editTextController;

  SignupOneModel? signupOneModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        signupOneModelObj,
      ];
  SignupOneState copyWith({
    TextEditingController? editTextController,
    SignupOneModel? signupOneModelObj,
  }) {
    return SignupOneState(
      editTextController: editTextController ?? this.editTextController,
      signupOneModelObj: signupOneModelObj ?? this.signupOneModelObj,
    );
  }
}
