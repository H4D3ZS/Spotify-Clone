import '../user_library_screen/widgets/userlibrary_item_widget.dart';
import 'bloc/user_library_bloc.dart';
import 'models/user_library_model.dart';
import 'models/userlibrary_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/presentation/library_page/library_page.dart';
import 'package:spotify_clone/presentation/search_page/search_page.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_leading_image.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_trailing_image.dart';
import 'package:spotify_clone/widgets/app_bar/custom_app_bar.dart';
import 'package:spotify_clone/widgets/custom_bottom_bar.dart';
import 'package:spotify_clone/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class UserLibraryScreen extends StatelessWidget {
  UserLibraryScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<UserLibraryBloc>(
        create: (context) => UserLibraryBloc(
            UserLibraryState(userLibraryModelObj: UserLibraryModel()))
          ..add(UserLibraryInitialEvent()),
        child: UserLibraryScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.secondaryContainer,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 584.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 146.v,
                                width: double.maxFinite,
                                decoration:
                                    BoxDecoration(color: appTheme.gray90011))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 17.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildPlaylists(context),
                                      SizedBox(height: 19.v),
                                      _buildUserLibrary(context)
                                    ])))
                      ])),
                  SizedBox(height: 26.v),
                  _buildSeeAllPlaylists(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 49.h, right: 34.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 32.v,
        leadingWidth: 31.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 15.h, top: 7.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSettingsPrimary,
              margin: EdgeInsets.symmetric(horizontal: 17.h),
              onTap: () {
                onTapSettings(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildPlaylists(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 18.h),
        decoration: AppDecoration.gradientCyanToSecondaryContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage2123x122,
              height: 123.v,
              width: 122.h,
              radius: BorderRadius.circular(58.h),
              margin: EdgeInsets.only(right: 115.h)),
          SizedBox(height: 37.v),
          CustomElevatedButton(
              height: 31.v,
              width: 105.h,
              text: "lbl_edit_profile".tr,
              buttonStyle: CustomButtonStyles.fillGrayTL15,
              buttonTextStyle: CustomTextStyles.labelLargePrimaryBold,
              alignment: Alignment.center),
          SizedBox(height: 57.v),
          Padding(
              padding: EdgeInsets.only(left: 38.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 18.h),
                              child: Text("lbl_23".tr,
                                  style: CustomTextStyles.labelLargePrimary)),
                          SizedBox(height: 3.v),
                          Text("lbl_playlists2".tr,
                              style: CustomTextStyles.labelMedium10)
                        ]),
                    _buildUserProfile(context,
                        dynamicText: "lbl_58".tr,
                        dynamicText1: "lbl_followers".tr),
                    _buildUserProfile(context,
                        dynamicText: "lbl_43".tr,
                        dynamicText1: "lbl_following".tr)
                  ])),
          SizedBox(height: 27.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("lbl_playlists".tr,
                  style: CustomTextStyles.titleMediumSemiBold19))
        ]));
  }

  /// Section Widget
  Widget _buildUserLibrary(BuildContext context) {
    return BlocSelector<UserLibraryBloc, UserLibraryState, UserLibraryModel?>(
        selector: (state) => state.userLibraryModelObj,
        builder: (context, userLibraryModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 16.v);
              },
              itemCount: userLibraryModelObj?.userlibraryItemList.length ?? 0,
              itemBuilder: (context, index) {
                UserlibraryItemModel model =
                    userLibraryModelObj?.userlibraryItemList[index] ??
                        UserlibraryItemModel();
                return UserlibraryItemWidget(model);
              });
        });
  }

  /// Section Widget
  Widget _buildSeeAllPlaylists(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("msg_see_all_playlists".tr,
              style: CustomTextStyles.titleSmallSemiBold_1),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimary16x16,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 2.v))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildUserProfile(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Column(children: [
      Text(dynamicText,
          style: CustomTextStyles.labelLargePrimary
              .copyWith(color: theme.colorScheme.primary)),
      SizedBox(height: 3.v),
      Text(dynamicText1,
          style: CustomTextStyles.labelMedium10
              .copyWith(color: appTheme.gray40004))
    ]);
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

  /// Navigates to the albumControlScreen when the action is triggered.
  onTapSettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.albumControlScreen,
    );
  }
}
