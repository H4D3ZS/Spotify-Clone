import 'bloc/song_share_bloc.dart';
import 'models/song_share_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/custom_icon_button.dart';

class SongShareScreen extends StatelessWidget {
  const SongShareScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SongShareBloc>(
        create: (context) =>
            SongShareBloc(SongShareState(songShareModelObj: SongShareModel()))
              ..add(SongShareInitialEvent()),
        child: SongShareScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongShareBloc, SongShareState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 37.h, vertical: 61.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 15.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 15.adaptSize,
                                  width: 15.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 4.v, bottom: 5.v),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: SizedBox(
                                                child: Divider(
                                                    color: appTheme.gray50))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: SizedBox(
                                                child: Divider(
                                                    color: appTheme.gray50)))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(left: 141.h),
                                  child: Text("lbl_share".tr,
                                      style: CustomTextStyles
                                          .titleMediumSemiBold18_1))
                            ]),
                        Spacer(flex: 39),
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgScreenShot20211208380x380,
                            height: 222.v,
                            width: 221.h,
                            alignment: Alignment.center),
                        SizedBox(height: 27.v),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                width: 216.h,
                                child: Text("msg_from_me_to_you".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.headlineSmall!
                                        .copyWith(height: 1.12)))),
                        SizedBox(height: 6.v),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_the_beatles".tr,
                                style: CustomTextStyles.titleMediumGray40004)),
                        Spacer(flex: 60),
                        Padding(
                            padding: EdgeInsets.only(right: 19.h),
                            child: Row(children: [
                              _buildEightyNine(context,
                                  messages: "lbl_copy_link".tr),
                              Spacer(flex: 46),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 6.h),
                                        child: CustomIconButton(
                                            height: 47.adaptSize,
                                            width: 47.adaptSize,
                                            padding: EdgeInsets.all(10.h),
                                            decoration: IconButtonStyleHelper
                                                .fillGreenTL23,
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgVolume))),
                                    SizedBox(height: 9.v),
                                    Text("lbl_whatsapp".tr,
                                        style: CustomTextStyles
                                            .labelLargePrimarySemiBold_1)
                                  ]),
                              Padding(
                                  padding: EdgeInsets.only(left: 28.h),
                                  child: Column(children: [
                                    CustomIconButton(
                                        height: 47.adaptSize,
                                        width: 47.adaptSize,
                                        padding: EdgeInsets.all(9.h),
                                        decoration:
                                            IconButtonStyleHelper.fillBlue,
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgTrash)),
                                    SizedBox(height: 8.v),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Text("lbl_twitter".tr,
                                            style: CustomTextStyles
                                                .labelLargePrimarySemiBold_1))
                                  ])),
                              Spacer(flex: 53),
                              _buildEightyNine(context,
                                  messages: "lbl_messages".tr)
                            ])),
                        SizedBox(height: 25.v),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: CustomIconButton(
                                height: 47.adaptSize,
                                width: 47.adaptSize,
                                padding: EdgeInsets.all(3.h),
                                decoration: IconButtonStyleHelper.fillPrimary,
                                onTap: () {
                                  onTapBtnTelevision(context);
                                },
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgTelevision))),
                        SizedBox(height: 7.v),
                        Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: Text("lbl_more2".tr,
                                style: CustomTextStyles
                                    .labelLargePrimarySemiBold_1))
                      ]))));
    });
  }

  /// Common widget
  Widget _buildEightyNine(
    BuildContext context, {
    required String messages,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: CustomIconButton(
              height: 47.adaptSize,
              width: 47.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillGreenTL231,
              child: CustomImageView(imagePath: ImageConstant.imgUserPrimary))),
      SizedBox(height: 9.v),
      Text(messages,
          style: CustomTextStyles.labelLargePrimarySemiBold_1
              .copyWith(color: theme.colorScheme.primary))
    ]);
  }

  /// Navigates to the albumControlScreen when the action is triggered.
  onTapBtnTelevision(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.albumControlScreen,
    );
  }
}
