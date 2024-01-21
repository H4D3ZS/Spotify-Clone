import 'bloc/settings_bloc.dart';
import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/presentation/library_page/library_page.dart';
import 'package:spotify_clone/presentation/search_page/search_page.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_leading_image.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:spotify_clone/widgets/app_bar/custom_app_bar.dart';
import 'package:spotify_clone/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
        create: (context) =>
            SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))
              ..add(SettingsInitialEvent()),
        child: SettingsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: Column(children: [
                    SizedBox(height: 32.v),
                    _buildMayaRow(context),
                    SizedBox(height: 69.v),
                    Padding(
                        padding: EdgeInsets.only(left: 20.h, right: 23.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 168.h,
                                  margin:
                                      EdgeInsets.only(top: 1.v, bottom: 2.v),
                                  child: Text("msg_account_data_sa".tr,
                                      maxLines: 24,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.titleMedium)),
                              Padding(
                                  padding: EdgeInsets.only(left: 182.h),
                                  child: Column(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize),
                                    SizedBox(height: 34.v),
                                    Opacity(
                                        opacity: 0.7,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorPrimary15x9,
                                            height: 15.v,
                                            width: 9.h)),
                                    SizedBox(height: 34.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize),
                                    SizedBox(height: 34.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize),
                                    SizedBox(height: 33.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize),
                                    SizedBox(height: 34.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize),
                                    SizedBox(height: 33.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize),
                                    SizedBox(height: 34.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize),
                                    SizedBox(height: 33.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize),
                                    SizedBox(height: 34.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize),
                                    SizedBox(height: 33.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowRight,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize)
                                  ]))
                            ])),
                    SizedBox(height: 13.v),
                    _buildTwentySevenRow(context)
                  ])),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 8.h),
                  child: _buildBottomBar(context))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 51.v,
        leadingWidth: 47.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftPrimary,
            margin: EdgeInsets.only(left: 31.h, top: 16.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_settings".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildMayaRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 23.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage21,
                  height: 58.v,
                  width: 59.h,
                  radius: BorderRadius.circular(27.h),
                  onTap: () {
                    onTapImgImageTwo(context);
                  }),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 10.v, bottom: 6.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_maya".tr,
                            style: CustomTextStyles.titleMediumBold18),
                        Text("lbl_view_profile".tr,
                            style: theme.textTheme.labelLarge)
                      ])),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(top: 25.v, bottom: 16.v))
            ]));
  }

  /// Section Widget
  Widget _buildTwentySevenRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 9.v),
        decoration: AppDecoration.fillGray90003
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 154.h,
              margin: EdgeInsets.only(bottom: 2.v),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgScreenShot2021120839x38,
                        height: 39.v,
                        width: 38.h,
                        radius: BorderRadius.circular(6.h)),
                    Container(
                        height: 32.v,
                        width: 106.h,
                        margin: EdgeInsets.only(top: 4.v, bottom: 2.v),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text("lbl_troye_sivan".tr,
                                      style: CustomTextStyles.labelLarge12))),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 14.h),
                                  child: Text("lbl_beatspill".tr,
                                      style: CustomTextStyles
                                          .bodySmallGreenA700))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Row(children: [
                                Text("lbl_easy".tr,
                                    style:
                                        CustomTextStyles.labelLargePrimary_1),
                                Container(
                                    height: 3.adaptSize,
                                    width: 3.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 6.h, top: 8.v, bottom: 6.v),
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.primary,
                                        borderRadius:
                                            BorderRadius.circular(1.h)))
                              ])),
                          CustomImageView(
                              imagePath: ImageConstant.imgBluetooth,
                              height: 10.v,
                              width: 6.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(left: 1.h, bottom: 2.v))
                        ]))
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgIconsControlC,
              height: 29.adaptSize,
              width: 29.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 6.v)),
          Padding(
              padding: EdgeInsets.only(left: 26.h),
              child: SizedBox(
                  height: 40.v,
                  child: VerticalDivider(
                      width: 5.h,
                      thickness: 5.v,
                      indent: 11.h,
                      endIndent: 10.h))),
          Padding(
              padding: EdgeInsets.only(left: 4.h, right: 5.h),
              child: SizedBox(
                  height: 40.v,
                  child: VerticalDivider(
                      width: 5.h,
                      thickness: 5.v,
                      indent: 11.h,
                      endIndent: 10.h)))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.searchPage;
      case BottomBarEnum.Search:
        return AppRoutes.libraryPage;
      case BottomBarEnum.Yourlibrary:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.searchPage:
        return SearchPage.builder(context);
      case AppRoutes.libraryPage:
        return LibraryPage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the userLibraryScreen when the action is triggered.
  onTapImgImageTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.userLibraryScreen,
    );
  }
}
