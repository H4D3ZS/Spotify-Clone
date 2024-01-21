import '../signup_four_screen/widgets/signupfour_item_widget.dart';
import 'bloc/signup_four_bloc.dart';
import 'models/signup_four_model.dart';
import 'models/signupfour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:spotify_clone/widgets/app_bar/custom_app_bar.dart';
import 'package:spotify_clone/widgets/custom_elevated_button.dart';
import 'package:spotify_clone/widgets/custom_text_form_field.dart';

class SignupFourScreen extends StatelessWidget {
  const SignupFourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupFourBloc>(
        create: (context) => SignupFourBloc(
            SignupFourState(signupFourModelObj: SignupFourModel()))
          ..add(SignupFourInitialEvent()),
        child: SignupFourScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v),
                child: Column(children: [
                  _buildCheckmarkStack(context),
                  SizedBox(height: 30.v),
                  Divider(
                      color: appTheme.gray60006, indent: 8.h, endIndent: 10.h),
                  SizedBox(height: 24.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 97.v,
                          width: 327.h,
                          margin: EdgeInsets.only(left: 15.h),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    width: 327.h,
                                    child: Text("msg_by_tapping_on_create".tr,
                                        maxLines: 7,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .labelMediumPrimarySemiBold))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 1.h, top: 31.v),
                                    child: Text("lbl_terms_of_use".tr,
                                        style: CustomTextStyles
                                            .labelMediumGreenA70002)))
                          ]))),
                  SizedBox(height: 10.v),
                  _buildDescriptionRow(context),
                  SizedBox(height: 331.v),
                  CustomElevatedButton(
                      width: 179.h,
                      text: "msg_create_an_account".tr,
                      buttonStyle: CustomButtonStyles.fillGray),
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
  Widget _buildCheckmarkStack(BuildContext context) {
    return SizedBox(
        height: 98.v,
        width: 365.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 20.v),
              child: BlocSelector<SignupFourBloc, SignupFourState,
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
                                horizontal: 16.h, vertical: 17.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgCheckmark,
                                height: 15.v,
                                width: 20.h)),
                        suffixConstraints: BoxConstraints(maxHeight: 51.v));
                  })),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(right: 174.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text("msg_what_s_your_name".tr,
                                style: theme.textTheme.titleLarge)),
                        SizedBox(height: 59.v),
                        Text("msg_this_appears_on".tr,
                            style: CustomTextStyles.labelSmallPrimary)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildDescriptionRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: SizedBox(
                  width: 285.h,
                  child: Text("msg_privacy_policy_please".tr,
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelMediumPrimarySemiBold))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 54.h, top: 40.v, bottom: 5.v),
                  child: BlocSelector<SignupFourBloc, SignupFourState,
                          SignupFourModel?>(
                      selector: (state) => state.signupFourModelObj,
                      builder: (context, signupFourModelObj) {
                        return ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 20.v);
                            },
                            itemCount:
                                signupFourModelObj?.signupfourItemList.length ??
                                    0,
                            itemBuilder: (context, index) {
                              SignupfourItemModel model = signupFourModelObj
                                      ?.signupfourItemList[index] ??
                                  SignupfourItemModel();
                              return SignupfourItemWidget(model);
                            });
                      })))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
