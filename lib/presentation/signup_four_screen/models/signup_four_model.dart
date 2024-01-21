// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'signupfour_item_model.dart';

/// This class defines the variables used in the [signup_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignupFourModel extends Equatable {
  SignupFourModel({this.signupfourItemList = const []}) {}

  List<SignupfourItemModel> signupfourItemList;

  SignupFourModel copyWith({List<SignupfourItemModel>? signupfourItemList}) {
    return SignupFourModel(
      signupfourItemList: signupfourItemList ?? this.signupfourItemList,
    );
  }

  @override
  List<Object?> get props => [signupfourItemList];
}
