import '../home_screen/widgets/editorspicks_item_widget.dart';
import '../home_screen/widgets/eightytwo_item_widget.dart';
import '../home_screen/widgets/topsongs_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/editorspicks_item_model.dart';
import 'models/eightytwo_item_model.dart';
import 'models/home_model.dart';
import 'models/topsongs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray90004,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 27.v),
                      _buildRecentlyPlayed(context),
                      SizedBox(height: 18.v),
                      _buildEightyTwo(context),
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgScreenShot20211207,
                                height: 58.adaptSize,
                                width: 58.adaptSize,
                                radius: BorderRadius.circular(2.h)),
                            Container(
                                height: 46.v,
                                width: 217.h,
                                margin: EdgeInsets.only(
                                    left: 7.h, top: 7.v, bottom: 4.v),
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                              "msg_your_2021_in_review".tr,
                                              style: theme
                                                  .textTheme.headlineMedium)),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 1.h),
                                              child: Text(
                                                  "lbl_spotifywrapped".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallGray500)))
                                    ]))
                          ])),
                      SizedBox(height: 16.v),
                      _buildTopSongs(context),
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_editor_s_picks".tr,
                              style: CustomTextStyles.headlineSmall24_1)),
                      SizedBox(height: 4.v),
                      _buildEditorSPicks(context),
                      SizedBox(height: 6.v),
                      _buildTwentyThree(context),
                      SizedBox(height: 12.v),
                      _buildHomeFilled(context),
                      SizedBox(height: 195.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgScreenShot202112131x324,
                          height: 1.v,
                          width: 324.h,
                          alignment: Alignment.centerRight)
                    ]))));
  }

  /// Section Widget
  Widget _buildRecentlyPlayed(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("lbl_recently_played".tr,
                  style: CustomTextStyles.titleMediumBold19),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 19.v,
                  width: 17.h,
                  margin: EdgeInsets.symmetric(vertical: 3.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgClock,
                  height: 20.v,
                  width: 19.h,
                  margin: EdgeInsets.only(left: 22.h, top: 2.v, bottom: 3.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgIconSettings,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 22.h))
            ])));
  }

  /// Section Widget
  Widget _buildEightyTwo(BuildContext context) {
    return SizedBox(
        height: 131.v,
        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
            selector: (state) => state.homeModelObj,
            builder: (context, homeModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 16.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 17.h);
                  },
                  itemCount: homeModelObj?.eightytwoItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    EightytwoItemModel model =
                        homeModelObj?.eightytwoItemList[index] ??
                            EightytwoItemModel();
                    return EightytwoItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildTopSongs(BuildContext context) {
    return SizedBox(
        height: 182.v,
        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
            selector: (state) => state.homeModelObj,
            builder: (context, homeModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 16.h, right: 88.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 15.h);
                  },
                  itemCount: homeModelObj?.topsongsItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    TopsongsItemModel model =
                        homeModelObj?.topsongsItemList[index] ??
                            TopsongsItemModel();
                    return TopsongsItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildEditorSPicks(BuildContext context) {
    return SizedBox(
        height: 194.v,
        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
            selector: (state) => state.homeModelObj,
            builder: (context, homeModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 12.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 15.h);
                  },
                  itemCount: homeModelObj?.editorspicksItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    EditorspicksItemModel model =
                        homeModelObj?.editorspicksItemList[index] ??
                            EditorspicksItemModel();
                    return EditorspicksItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildTwentyThree(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(left: 6.h),
        color: appTheme.gray9008e,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Container(
            height: 59.v,
            width: 410.h,
            decoration: AppDecoration.fillGrayE
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(top: 9.v, right: 12.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 17.v),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_the".tr,
                                          style: CustomTextStyles
                                              .labelMediumffb3b3b3),
                                      TextSpan(
                                          text: "lbl_b".tr,
                                          style: CustomTextStyles
                                              .labelMediuma3b3b3b3)
                                    ]),
                                    textAlign: TextAlign.left)),
                            CustomImageView(
                                imagePath: ImageConstant.imgIconsControlC,
                                height: 29.adaptSize,
                                width: 29.adaptSize,
                                margin: EdgeInsets.only(left: 15.h, top: 4.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: SizedBox(
                                    height: 32.v,
                                    child: VerticalDivider(
                                        width: 5.h,
                                        thickness: 5.v,
                                        indent: 9.h,
                                        endIndent: 4.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: SizedBox(
                                    height: 32.v,
                                    child: VerticalDivider(
                                        width: 5.h,
                                        thickness: 5.v,
                                        indent: 9.h,
                                        endIndent: 4.h)))
                          ]))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.h, bottom: 1.v),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 48.h),
                                child: Row(children: [
                                  Text("msg_from_me_to_you".tr,
                                      style: CustomTextStyles
                                          .labelLargePrimarySemiBold_2),
                                  Container(
                                      height: 3.adaptSize,
                                      width: 3.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 6.h, top: 9.v, bottom: 6.v),
                                      decoration: BoxDecoration(
                                          color: theme.colorScheme.primary,
                                          borderRadius:
                                              BorderRadius.circular(1.h)))
                                ]))),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 44.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgIconsControlC,
                                      height: 15.adaptSize,
                                      width: 15.adaptSize,
                                      margin: EdgeInsets.only(top: 16.v)),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 2.h, top: 15.v),
                                      child: Text("lbl_beatspill".tr,
                                          style: CustomTextStyles
                                              .bodySmallGreenA70003)),
                                  Spacer(),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgIconsControlC,
                                      height: 29.adaptSize,
                                      width: 29.adaptSize)
                                ])),
                        SizedBox(height: 9.v),
                        Divider(color: appTheme.pink900Ad)
                      ]))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                      height: 6.v,
                      width: 400.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                                height: 6.v,
                                width: 213.h,
                                child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: SizedBox(
                                              width: 213.h,
                                              child: Divider(
                                                  color: appTheme.gray400))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 12.h),
                                              child: Text(
                                                  "msg_asdsadsadadasad".tr,
                                                  style: CustomTextStyles
                                                      .circularStdGray400)))
                                    ]))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                                width: 400.h,
                                child: Divider(color: appTheme.pink900Ad)))
                      ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgScreenShot2021120837x37,
                  height: 37.adaptSize,
                  width: 37.adaptSize,
                  radius: BorderRadius.circular(7.h),
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 10.h, top: 9.v))
            ])));
  }

  /// Section Widget
  Widget _buildHomeFilled(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 40.h, right: 26.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 39.v,
                      width: 35.h,
                      margin: EdgeInsets.only(top: 2.v, bottom: 1.v),
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgHomeFilled,
                            height: 22.adaptSize,
                            width: 22.adaptSize,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(right: 5.h)),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("lbl_home".tr,
                                style: theme.textTheme.bodyMedium))
                      ])),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 175.h,
                            margin: EdgeInsets.only(left: 6.h, right: 25.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgSearch,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                      margin: EdgeInsets.only(top: 2.v),
                                      onTap: () {
                                        onTapImgSearch(context);
                                      }),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLibrarySmall,
                                      height: 22.adaptSize,
                                      width: 22.adaptSize)
                                ])),
                        SizedBox(height: 1.v),
                        SizedBox(
                            width: 206.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Text("lbl_search".tr,
                                          style: theme.textTheme.bodyMedium)),
                                  Text("lbl_your_library".tr,
                                      style: theme.textTheme.bodyMedium)
                                ]))
                      ])
                ])));
  }

  /// Navigates to the searchOneScreen when the action is triggered.
  onTapImgSearch(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchOneScreen,
    );
  }
}
