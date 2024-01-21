import 'bloc/signup_one_bloc.dart';
import 'models/signup_one_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:spotify_clone/widgets/app_bar/custom_app_bar.dart';
import 'package:spotify_clone/widgets/custom_elevated_button.dart';
import 'package:spotify_clone/widgets/custom_text_form_field.dart';

class SignupOneScreen extends StatelessWidget {
  const SignupOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupOneBloc>(
        create: (context) =>
            SignupOneBloc(SignupOneState(signupOneModelObj: SignupOneModel()))
              ..add(SignupOneInitialEvent()),
        child: SignupOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 13.v),
                child: Column(children: [
                  _buildEditText(context),
                  SizedBox(height: 7.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_you_ll_need_to_confirm".tr,
                          style: CustomTextStyles.labelSmallPrimary)),
                  SizedBox(height: 43.v),
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
  Widget _buildEditText(BuildContext context) {
    return SizedBox(
        height: 77.v,
        width: 365.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Text("msg_what_s_your_email".tr,
                  style: theme.textTheme.titleLarge)),
          BlocSelector<SignupOneBloc, SignupOneState, TextEditingController?>(
              selector: (state) => state.editTextController,
              builder: (context, editTextController) {
                return CustomTextFormField(
                    width: 365.h,
                    controller: editTextController,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.bottomCenter);
              })
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
