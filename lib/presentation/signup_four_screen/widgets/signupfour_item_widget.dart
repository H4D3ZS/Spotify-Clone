import '../models/signupfour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';

// ignore: must_be_immutable
class SignupfourItemWidget extends StatelessWidget {
  SignupfourItemWidget(
    this.signupfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SignupfourItemModel signupfourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.adaptSize,
      width: 24.adaptSize,
      decoration: BoxDecoration(
        color: appTheme.gray60001,
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
    );
  }
}
