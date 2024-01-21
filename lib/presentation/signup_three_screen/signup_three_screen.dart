import 'bloc/signup_three_bloc.dart';
import 'models/signup_three_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:spotify_clone/widgets/app_bar/custom_app_bar.dart';
import 'package:spotify_clone/widgets/custom_elevated_button.dart';
import 'package:spotify_clone/widgets/custom_text_form_field.dart';

class SignupThreeScreen extends StatelessWidget {
  const SignupThreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupThreeBloc>(
        create: (context) => SignupThreeBloc(
            SignupThreeState(signupThreeModelObj: SignupThreeModel()))
          ..add(SignupThreeInitialEvent()),
        child: SignupThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 13.v),
                child: Column(children: [
                  _buildCheckmark(context),
                  SizedBox(height: 62.v),
                  CustomElevatedButton(width: 82.h, text: "lbl_next".tr),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftPrimary,
            margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_create_account".tr));
  }

  /// Section Widget
  Widget _buildCheckmark(BuildContext context) {
    return SizedBox(
        height: 77.v,
        width: 366.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Text("msg_what_s_your_gender".tr,
                  style: theme.textTheme.titleLarge)),
          BlocSelector<SignupThreeBloc, SignupThreeState,
                  TextEditingController?>(
              selector: (state) => state.checkmarkController,
              builder: (context, checkmarkController) {
                return CustomTextFormField(
                    width: 365.h,
                    controller: checkmarkController,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.bottomCenter,
                    suffix: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 18.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgCheckmark,
                            height: 15.v,
                            width: 20.h)),
                    suffixConstraints: BoxConstraints(maxHeight: 51.v));
              })
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
