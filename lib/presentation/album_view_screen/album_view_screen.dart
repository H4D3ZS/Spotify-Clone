import 'bloc/album_view_bloc.dart';
import 'models/album_view_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_leading_image.dart';
import 'package:spotify_clone/widgets/app_bar/custom_app_bar.dart';
import 'package:spotify_clone/widgets/custom_icon_button.dart';

class AlbumViewScreen extends StatelessWidget {
  const AlbumViewScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AlbumViewBloc>(
        create: (context) =>
            AlbumViewBloc(AlbumViewState(albumViewModelObj: AlbumViewModel()))
              ..add(AlbumViewInitialEvent()),
        child: AlbumViewScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlbumViewBloc, AlbumViewState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              appBar: _buildAppBar(context),
              body: Container(
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                        appTheme.red800,
                        appTheme.gray900,
                        appTheme.gray90011
                      ])),
                  child: Container(
                      width: double.maxFinite,
                      padding:
                          EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgScreenShot2021120847x47,
                            height: 236.v,
                            width: 234.h,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 81.h)),
                        SizedBox(height: 40.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Text("lbl_1_remastered".tr,
                                    style: CustomTextStyles.headlineSmall_1))),
                        SizedBox(height: 9.v),
                        _buildSongDetails(context),
                        SizedBox(height: 18.v),
                        _buildLoveMeDo(context),
                        SizedBox(height: 26.v),
                        _buildFromMeToYou(context),
                        SizedBox(height: 20.v),
                        _buildSheLovesYou(context),
                        SizedBox(height: 25.v),
                        _buildIWantToHoldYour(context),
                        SizedBox(height: 26.v),
                        _buildTwentyFive(context),
                        SizedBox(height: 14.v),
                        _buildHome(context),
                        SizedBox(height: 5.v)
                      ])))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 34.v,
        leadingWidth: 427.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorPrimary15x9,
            margin: EdgeInsets.fromLTRB(17.h, 9.v, 401.h, 9.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Section Widget
  Widget _buildSongDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h, right: 18.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgScreenShot2021120721x23,
                      height: 21.v,
                      width: 23.h,
                      radius: BorderRadius.circular(10.h)),
                  Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text("lbl_the_beatles".tr,
                          style: CustomTextStyles.titleSmallSemiBold))
                ]),
                SizedBox(height: 10.v),
                Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Row(children: [
                      Text("lbl_album2".tr, style: theme.textTheme.labelLarge),
                      Container(
                          height: 3.adaptSize,
                          width: 3.adaptSize,
                          margin:
                              EdgeInsets.only(left: 6.h, top: 8.v, bottom: 6.v),
                          decoration: BoxDecoration(
                              color: appTheme.gray40001,
                              borderRadius: BorderRadius.circular(1.h))),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text("lbl_2000".tr,
                              style: theme.textTheme.labelLarge))
                    ])),
                SizedBox(height: 8.v),
                Container(
                    width: 124.h,
                    margin: EdgeInsets.only(left: 2.h),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgFavorite,
                              height: 19.v,
                              width: 20.h,
                              margin: EdgeInsets.only(top: 4.v, bottom: 5.v)),
                          Spacer(),
                          Padding(
                              padding: EdgeInsets.only(top: 2.v, bottom: 5.v),
                              child: CustomIconButton(
                                  height: 21.adaptSize,
                                  width: 21.adaptSize,
                                  padding: EdgeInsets.all(3.h),
                                  decoration: IconButtonStyleHelper.fillGreen,
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowNarrowDown))),
                          CustomImageView(
                              imagePath: ImageConstant.imgSettingsGray50001,
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              margin: EdgeInsets.only(left: 24.h),
                              onTap: () {
                                onTapImgSettings(context);
                              })
                        ]))
              ]),
              Padding(
                  padding: EdgeInsets.only(top: 12.v, bottom: 18.v),
                  child: CustomIconButton(
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      child: CustomImageView()))
            ]));
  }

  /// Section Widget
  Widget _buildLoveMeDo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 42.v,
              width: 263.h,
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Text("msg_love_me_do_mono".tr,
                        style: CustomTextStyles.titleMedium17)),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 13.adaptSize,
                                  width: 13.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 2.v, bottom: 3.v),
                                  padding: EdgeInsets.all(2.h),
                                  decoration: AppDecoration.fillGreen40003
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder7),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowNarrowDown,
                                      height: 8.adaptSize,
                                      width: 8.adaptSize,
                                      alignment: Alignment.center)),
                              Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("lbl_the_beatles".tr,
                                      style:
                                          CustomTextStyles.titleSmallGray40004))
                            ])))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsGray50001,
              height: 27.adaptSize,
              width: 27.adaptSize,
              margin: EdgeInsets.only(top: 12.v, bottom: 3.v),
              onTap: () {
                onTapImgSettings1(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildFromMeToYou(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFromMeToYou(context);
        },
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Padding(
                        padding: EdgeInsets.only(top: 7.v, bottom: 2.v),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMore,
                              height: 11.adaptSize,
                              width: 11.adaptSize),
                          SizedBox(height: 8.v),
                          Container(
                              height: 13.adaptSize,
                              width: 13.adaptSize,
                              padding: EdgeInsets.all(2.h),
                              decoration: AppDecoration.fillGreen40003.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowNarrowDown,
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  alignment: Alignment.center))
                        ])),
                    Container(
                        height: 42.v,
                        width: 274.h,
                        margin: EdgeInsets.only(left: 4.h),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text("msg_from_me_to_you".tr,
                                  style:
                                      CustomTextStyles.titleMediumGreenA70002)),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text("lbl_the_beatles".tr,
                                  style: CustomTextStyles.titleSmallGray40004))
                        ]))
                  ])),
              CustomImageView(
                  imagePath: ImageConstant.imgSettingsGray50001,
                  height: 28.v,
                  width: 27.h,
                  margin: EdgeInsets.only(left: 70.h, top: 10.v, bottom: 4.v))
            ])));
  }

  /// Section Widget
  Widget _buildSheLovesYou(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 11.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 41.v,
              width: 280.h,
              margin: EdgeInsets.only(bottom: 1.v),
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Text("msg_she_loves_you".tr,
                        style: CustomTextStyles.titleMedium17)),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 17.h),
                        child: Text("lbl_the_beatles".tr,
                            style: CustomTextStyles.titleSmallGray40004))),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        height: 13.adaptSize,
                        width: 13.adaptSize,
                        margin: EdgeInsets.only(bottom: 2.v),
                        padding: EdgeInsets.all(2.h),
                        decoration: AppDecoration.fillGreen40003.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder7),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgArrowNarrowDown,
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            alignment: Alignment.center)))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsGray50001,
              height: 28.v,
              width: 27.h,
              margin: EdgeInsets.only(left: 83.h, top: 15.v),
              onTap: () {
                onTapImgSettings2(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildIWantToHoldYour(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("msg_i_want_to_hold_your".tr,
                    style: CustomTextStyles.titleMedium17),
                Row(children: [
                  Container(
                      height: 13.adaptSize,
                      width: 13.adaptSize,
                      margin: EdgeInsets.only(top: 3.v, bottom: 2.v),
                      padding: EdgeInsets.all(2.h),
                      decoration: AppDecoration.fillGreen40003.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder7),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowNarrowDown,
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          alignment: Alignment.center)),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text("lbl_the_beatles".tr,
                          style: CustomTextStyles.titleSmallGray40004))
                ])
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsGray50001,
              height: 27.adaptSize,
              width: 27.adaptSize,
              margin: EdgeInsets.only(left: 8.h, top: 12.v, bottom: 2.v),
              onTap: () {
                onTapImgSettings3(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTwentyFive(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            decoration: AppDecoration.fillGrayE
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 6.v),
                  Padding(
                      padding: EdgeInsets.only(left: 10.h, right: 25.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                                child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgScreenShot2021120837x37,
                                  height: 37.adaptSize,
                                  width: 37.adaptSize,
                                  radius: BorderRadius.circular(7.h),
                                  margin: EdgeInsets.only(top: 1.v)),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 7.h),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Row(children: [
                                                  SizedBox(
                                                      height: 19.v,
                                                      width: 219.h,
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Text(
                                                                    "msg_from_me_to_you"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelLargePrimarySemiBold_2)),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Text(
                                                                    "msg_from_me_to_you"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelLargePrimarySemiBold_2))
                                                          ])),
                                                  Container(
                                                      height: 3.adaptSize,
                                                      width: 3.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 4.h,
                                                          top: 8.v,
                                                          bottom: 7.v),
                                                      decoration: BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      1.h))),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 6.h, top: 2.v),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_the"
                                                                            .tr,
                                                                    style: CustomTextStyles
                                                                        .labelMediumffb3b3b3),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_b"
                                                                            .tr,
                                                                    style: CustomTextStyles
                                                                        .labelMediuma3b3b3b3)
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))
                                                ])),
                                            SizedBox(height: 3.v),
                                            Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgIconsControlC,
                                                  height: 15.adaptSize,
                                                  width: 15.adaptSize),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.h),
                                                  child: Text(
                                                      "lbl_beatspill".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallGreenA700))
                                            ])
                                          ])))
                            ])),
                            CustomImageView(
                                imagePath: ImageConstant.imgIconsControlC,
                                height: 29.adaptSize,
                                width: 29.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 2.h, top: 6.v, bottom: 3.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: SizedBox(
                                    height: 37.v,
                                    child: VerticalDivider(
                                        width: 5.h,
                                        thickness: 5.v,
                                        indent: 11.h,
                                        endIndent: 7.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: SizedBox(
                                    height: 37.v,
                                    child: VerticalDivider(
                                        width: 5.h,
                                        thickness: 5.v,
                                        indent: 11.h,
                                        endIndent: 7.h)))
                          ])),
                  SizedBox(height: 9.v),
                  Container(
                      height: 3.v,
                      width: 400.h,
                      margin: EdgeInsets.only(left: 10.h),
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                width: 400.h,
                                child: Divider(color: appTheme.pink900Ad))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                                width: 213.h,
                                child: Divider(color: appTheme.gray400)))
                      ]))
                ])));
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 31.h, right: 17.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: 39.v,
              width: 35.h,
              margin: EdgeInsets.only(top: 2.v, bottom: 1.v),
              child: Stack(alignment: Alignment.topRight, children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child:
                        Text("lbl_home".tr, style: theme.textTheme.bodyMedium)),
                CustomImageView(
                    imagePath: ImageConstant.imgHomeFilled,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(right: 5.h))
              ])),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                width: 175.h,
                margin: EdgeInsets.only(left: 6.h, right: 25.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgSearch,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(top: 2.v)),
                      CustomImageView(
                          imagePath: ImageConstant.imgLibrarySmall,
                          height: 22.adaptSize,
                          width: 22.adaptSize)
                    ])),
            SizedBox(height: 1.v),
            SizedBox(
                width: 206.h,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text("lbl_search".tr,
                              style: theme.textTheme.bodyMedium)),
                      Text("lbl_your_library".tr,
                          style: theme.textTheme.bodyMedium)
                    ]))
          ])
        ]));
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the albumControlScreen when the action is triggered.
  onTapImgSettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.albumControlScreen,
    );
  }

  /// Navigates to the albumControlScreen when the action is triggered.
  onTapImgSettings1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.albumControlScreen,
    );
  }

  /// Navigates to the trackScreen when the action is triggered.
  onTapFromMeToYou(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trackScreen,
    );
  }

  /// Navigates to the albumControlScreen when the action is triggered.
  onTapImgSettings2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.albumControlScreen,
    );
  }

  /// Navigates to the albumControlScreen when the action is triggered.
  onTapImgSettings3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.albumControlScreen,
    );
  }

  /// Navigates to the trackViewScreen when the action is triggered.
  onTapTwentyFive(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trackViewScreen,
    );
  }
}
