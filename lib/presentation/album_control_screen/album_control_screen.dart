import 'bloc/album_control_bloc.dart';
import 'models/album_control_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';

class AlbumControlScreen extends StatelessWidget {
  const AlbumControlScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AlbumControlBloc>(
        create: (context) => AlbumControlBloc(
            AlbumControlState(albumControlModelObj: AlbumControlModel()))
          ..add(AlbumControlInitialEvent()),
        child: AlbumControlScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlbumControlBloc, AlbumControlState>(
        builder: (context, state) {
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgScreenShot20211210,
                                  height: 169.v,
                                  width: 164.h,
                                  alignment: Alignment.center),
                              SizedBox(height: 66.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("lbl_1_remastered".tr,
                                      style: CustomTextStyles
                                          .titleLargeSemiBold_1)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("lbl_the_beatles".tr,
                                      style: CustomTextStyles
                                          .titleSmallGray40004)),
                              SizedBox(height: 48.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 44.h),
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
                                  padding: EdgeInsets.only(left: 44.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgOffer,
                                        height: 23.v,
                                        width: 20.h),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 14.h, top: 2.v),
                                        child: Text("lbl_view_artist".tr,
                                            style: theme.textTheme.titleMedium))
                                  ])),
                              SizedBox(height: 42.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 44.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgTwitter,
                                        height: 20.v,
                                        width: 15.h),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtShare(context);
                                        },
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 18.h),
                                            child: Text("lbl_share".tr,
                                                style: theme
                                                    .textTheme.titleMedium)))
                                  ])),
                              SizedBox(height: 44.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 44.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgFavorite,
                                        height: 20.v,
                                        width: 21.h,
                                        margin: EdgeInsets.only(bottom: 2.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 14.h),
                                        child: Text("lbl_like_all_songs".tr,
                                            style: theme.textTheme.titleMedium))
                                  ])),
                              SizedBox(height: 40.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 44.h),
                                  child: Row(children: [
                                    Container(
                                        height: 23.v,
                                        width: 19.h,
                                        margin: EdgeInsets.only(bottom: 1.v),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle287,
                                                  height: 9.v,
                                                  width: 1.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 6.h, bottom: 4.v)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle286,
                                                  height: 3.v,
                                                  width: 10.h,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                      top: 3.v)),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      height: 10.adaptSize,
                                                      width: 10.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 2.v),
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .gray40004,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.h)))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 1.h),
                                                      child: Text("lbl".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallRobotoGray9000712))),
                                              Align(
                                                  alignment: Alignment
                                                      .bottomLeft,
                                                  child: Container(
                                                      height: 7.adaptSize,
                                                      width: 7.adaptSize,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .gray40001,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      3.h)))),
                                              Align(
                                                  alignment: Alignment
                                                      .bottomRight,
                                                  child: Container(
                                                      height: 7.adaptSize,
                                                      width: 7.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          bottom: 2.v),
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .gray40001,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      3.h)))),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle287,
                                                  height: 13.v,
                                                  width: 1.h,
                                                  alignment: Alignment.topRight,
                                                  margin:
                                                      EdgeInsets.only(top: 4.v))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.h, top: 2.v),
                                        child: Text("lbl_add_to_playlist".tr,
                                            style: theme.textTheme.titleMedium))
                                  ])),
                              SizedBox(height: 42.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 44.h),
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
                                                      width: 19.h,
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
                                                                    margin: EdgeInsets.only(
                                                                        top: 5
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
                                                                    height:
                                                                        15.v,
                                                                    width: 19.h,
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgRectangle227,
                                                                              height: 1.v,
                                                                              width: 12.h,
                                                                              alignment: Alignment.bottomRight,
                                                                              margin: EdgeInsets.only(bottom: 1.v)),
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Container(height: 10.adaptSize, width: 10.adaptSize, decoration: BoxDecoration(color: appTheme.gray40004, borderRadius: BorderRadius.circular(5.h)))),
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl".tr, style: CustomTextStyles.bodySmallRobotoGray9000712)))
                                                                        ])))
                                                          ]))),
                                              SizedBox(height: 4.v),
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
                                        padding: EdgeInsets.only(
                                            left: 15.h, top: 2.v),
                                        child: Text("lbl_add_to_queue".tr,
                                            style: theme.textTheme.titleMedium))
                                  ])),
                              SizedBox(height: 41.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 42.h),
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
                              SizedBox(height: 47.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("lbl_close".tr,
                                      style: theme.textTheme.titleMedium)),
                              SizedBox(height: 1394.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Text("lbl_view_album".tr,
                                      style: theme.textTheme.titleMedium))
                            ])))
                      ])))));
    });
  }

  /// Navigates to the songShareScreen when the action is triggered.
  onTapTxtShare(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.songShareScreen,
    );
  }
}
