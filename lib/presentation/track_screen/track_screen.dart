import 'bloc/track_bloc.dart';
import 'models/track_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/custom_radio_button.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TrackBloc>(
        create: (context) => TrackBloc(TrackState(trackModelObj: TrackModel()))
          ..add(TrackInitialEvent()),
        child: TrackScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [appTheme.red900, appTheme.gray90011])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 21.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgScreenShot20211210,
                                height: 169.v,
                                width: 164.h,
                                alignment: Alignment.center),
                            SizedBox(height: 66.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_1_remastered".tr,
                                    style:
                                        CustomTextStyles.titleLargeSemiBold_1)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_the_beatles".tr,
                                    style:
                                        CustomTextStyles.titleSmallGray40004)),
                            SizedBox(height: 48.v),
                            Padding(
                                padding: EdgeInsets.only(left: 38.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFavorite,
                                      height: 20.v,
                                      width: 21.h,
                                      margin: EdgeInsets.only(bottom: 1.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 14.h),
                                      child: Text("lbl_like".tr,
                                          style: theme.textTheme.titleMedium))
                                ])),
                            SizedBox(height: 41.v),
                            Padding(
                                padding: EdgeInsets.only(left: 38.h),
                                child: Row(children: [
                                  Container(
                                      height: 22.adaptSize,
                                      width: 22.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgAlbum,
                                                height: 22.adaptSize,
                                                width: 22.adaptSize,
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    height: 22.adaptSize,
                                                    width: 22.adaptSize,
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgAlbum,
                                                              height:
                                                                  22.adaptSize,
                                                              width:
                                                                  22.adaptSize,
                                                              alignment:
                                                                  Alignment
                                                                      .center),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Container(
                                                                  height: 1.v,
                                                                  width: 14.h,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top: 10
                                                                              .v),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          color:
                                                                              appTheme.gray40001)))
                                                        ])))
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Text("lbl_hide_song".tr,
                                          style: theme.textTheme.titleMedium))
                                ])),
                            SizedBox(height: 39.v),
                            Padding(
                                padding: EdgeInsets.only(left: 38.h),
                                child: Row(children: [
                                  Container(
                                      height: 23.v,
                                      width: 19.h,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        top: 1.v, right: 8.h),
                                                    decoration: AppDecoration
                                                        .fillGray40004
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder7),
                                                    child: Container(
                                                        height: 11.adaptSize,
                                                        width: 11.adaptSize,
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .gray40004,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(5
                                                                        .h))))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    height: 23.v,
                                                    width: 19.h,
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 2
                                                                              .h),
                                                                  child: Text(
                                                                      "lbl".tr,
                                                                      style: CustomTextStyles
                                                                          .bodySmallRobotoGray90007_1))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Container(
                                                                  height: 7
                                                                      .adaptSize,
                                                                  width: 7
                                                                      .adaptSize,
                                                                  decoration: BoxDecoration(
                                                                      color: appTheme
                                                                          .gray40001,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3.h)))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child: Container(
                                                                  height: 7
                                                                      .adaptSize,
                                                                  width: 7
                                                                      .adaptSize,
                                                                  margin: EdgeInsets.only(
                                                                      bottom:
                                                                          2.v),
                                                                  decoration: BoxDecoration(
                                                                      color: appTheme
                                                                          .gray40001,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3.h)))),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRectangle286,
                                                              height: 3.v,
                                                              width: 10.h,
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          3.v)),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRectangle287,
                                                              height: 8.v,
                                                              width: 1.h,
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 6.h,
                                                                      bottom:
                                                                          4.v)),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRectangle287,
                                                              height: 13.v,
                                                              width: 1.h,
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 4.v))
                                                        ])))
                                          ])),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 13.h, top: 3.v),
                                      child: Text("lbl_add_to_playlist".tr,
                                          style: theme.textTheme.titleMedium))
                                ])),
                            SizedBox(height: 37.v),
                            Padding(
                                padding: EdgeInsets.only(left: 36.h),
                                child: Row(children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 3.v),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    height: 15.v,
                                                    width: 20.h,
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Container(
                                                                  height: 1.v,
                                                                  width: 7.h,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top: 6
                                                                              .v),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          color:
                                                                              appTheme.gray40004))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: SizedBox(
                                                                  height: 15.v,
                                                                  width: 20.h,
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft,
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgRectangle227,
                                                                            height: 1.v,
                                                                            width: 12.h,
                                                                            alignment: Alignment.bottomRight),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .topLeft,
                                                                            child: Container(
                                                                                height: 11.adaptSize,
                                                                                width: 11.adaptSize,
                                                                                margin: EdgeInsets.only(top: 1.v),
                                                                                decoration: BoxDecoration(color: appTheme.gray40004, borderRadius: BorderRadius.circular(5.h)))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            child: Padding(padding: EdgeInsets.only(left: 2.h), child: Text("lbl".tr, style: CustomTextStyles.bodySmallRobotoGray90007)))
                                                                      ])))
                                                        ]))),
                                            SizedBox(height: 5.v),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                    height: 1.v,
                                                    width: 17.h,
                                                    decoration: BoxDecoration(
                                                        color: appTheme
                                                            .gray40004)))
                                          ])),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 15.h, top: 3.v),
                                      child: Text("lbl_add_to_queue".tr,
                                          style: theme.textTheme.titleMedium))
                                ])),
                            SizedBox(height: 33.v),
                            Padding(
                                padding: EdgeInsets.only(left: 38.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgTwitterGray40004,
                                      height: 20.v,
                                      width: 15.h,
                                      margin: EdgeInsets.only(bottom: 1.v)),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtShare(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 16.h),
                                          child: Text("lbl_share".tr,
                                              style:
                                                  theme.textTheme.titleMedium)))
                                ])),
                            SizedBox(height: 39.v),
                            Padding(
                                padding: EdgeInsets.only(left: 34.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSettingsGray40004,
                                      height: 21.v,
                                      width: 24.h),
                                  Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Text("lbl_go_to_radio".tr,
                                          style: theme.textTheme.titleMedium))
                                ])),
                            SizedBox(height: 35.v),
                            _buildViewAlbum(context),
                            SizedBox(height: 39.v),
                            Padding(
                                padding: EdgeInsets.only(left: 37.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgOffer,
                                      height: 23.v,
                                      width: 20.h),
                                  Padding(
                                      padding: EdgeInsets.only(left: 14.h),
                                      child: Text("lbl_view_artist".tr,
                                          style: theme.textTheme.titleMedium))
                                ])),
                            SizedBox(height: 39.v),
                            Padding(
                                padding: EdgeInsets.only(left: 34.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLock,
                                      height: 29.v,
                                      width: 27.h),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 14.h, top: 3.v, bottom: 3.v),
                                      child: Text("lbl_song_credits".tr,
                                          style: theme.textTheme.titleMedium))
                                ])),
                            SizedBox(height: 35.v),
                            Padding(
                                padding: EdgeInsets.only(left: 42.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgMoonfill,
                                          height: 14.adaptSize,
                                          width: 14.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 1.v, bottom: 6.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 19.h),
                                          child: Text("lbl_sleep_timer".tr,
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ])),
                            SizedBox(height: 36.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_close".tr,
                                    style: theme.textTheme.titleMedium)),
                            SizedBox(height: 1244.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Text("lbl_view_album".tr,
                                    style: theme.textTheme.titleMedium))
                          ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildViewAlbum(BuildContext context) {
    return BlocSelector<TrackBloc, TrackState, String?>(
        selector: (state) => state.radioGroup,
        builder: (context, radioGroup) {
          return Padding(
              padding: EdgeInsets.only(left: 35.h),
              child: CustomRadioButton(
                  text: "lbl_view_album".tr,
                  value: "lbl_view_album".tr,
                  groupValue: radioGroup,
                  onChange: (value) {
                    context
                        .read<TrackBloc>()
                        .add(ChangeRadioButtonEvent(value: value));
                  }));
        });
  }

  /// Navigates to the songShareScreen when the action is triggered.
  onTapTxtShare(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.songShareScreen,
    );
  }
}
