import 'bloc/start_bloc.dart';
import 'models/start_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/custom_elevated_button.dart';
import 'package:spotify_clone/widgets/custom_outlined_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<StartBloc>(
        create: (context) => StartBloc(StartState(startModelObj: StartModel()))
          ..add(StartInitialEvent()),
        child: StartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StartBloc, StartState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(
                        height: 488.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                  height: 465.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImg27561,
                                            height: 465.v,
                                            width: 428.h,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: 57.v,
                                                width: 55.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 7.v),
                                                decoration: BoxDecoration(
                                                    color: appTheme.gray90011)))
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgSettings,
                              height: 52.adaptSize,
                              width: 52.adaptSize,
                              alignment: Alignment.bottomCenter)
                        ])),
                    SizedBox(height: 8.v),
                    SizedBox(
                        width: 243.h,
                        child: Text("msg_millions_of_songs_free".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.headlineMediumBold28)),
                    SizedBox(height: 25.v),
                    _buildSignUpButton(context),
                    SizedBox(height: 12.v),
                    _buildContinueWithGoogleButton(context),
                    SizedBox(height: 12.v),
                    _buildContinueWithFacebookButton(context),
                    SizedBox(height: 12.v),
                    _buildContinueWithAppleButton(context),
                    SizedBox(height: 12.v),
                    Text("lbl_log_in".tr,
                        style: CustomTextStyles.titleMediumGray100Bold),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        height: 49.v,
        text: "lbl_sign_up_free".tr,
        margin: EdgeInsets.only(left: 46.h, right: 45.h),
        buttonStyle: CustomButtonStyles.fillGreenA,
        buttonTextStyle: CustomTextStyles.titleMediumBlack90001Bold,
        onPressed: () {
          onTapSignUpButton(context);
        });
  }

  /// Section Widget
  Widget _buildContinueWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_continue_with_google".tr,
        margin: EdgeInsets.only(left: 46.h, right: 45.h));
  }

  /// Section Widget
  Widget _buildContinueWithFacebookButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_continue_with_facebook".tr,
        margin: EdgeInsets.only(left: 46.h, right: 45.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Section Widget
  Widget _buildContinueWithAppleButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_continue_with_apple".tr,
        margin: EdgeInsets.only(left: 46.h, right: 45.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser, height: 16.v, width: 13.h)));
  }

  /// Navigates to the signupOneScreen when the action is triggered.
  onTapSignUpButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupOneScreen,
    );
  }
}
