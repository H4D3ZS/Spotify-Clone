import '../library_page/widgets/userprofile1_item_widget.dart';
import 'bloc/library_bloc.dart';
import 'models/library_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_subtitle.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_trailing_image.dart';
import 'package:spotify_clone/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LibraryBloc>(
      create: (context) => LibraryBloc(LibraryState(
        libraryModelObj: LibraryModel(),
      ))
        ..add(LibraryInitialEvent()),
      child: LibraryPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 15.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFrame(context),
              SizedBox(height: 27.v),
              _buildArrowNarrowDown(context),
              SizedBox(height: 21.v),
              _buildUserProfile(context),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgScreenShot2021120763x67,
                      height: 63.v,
                      width: 67.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 11.v,
                        bottom: 7.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 21.v,
                            width: 22.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "lbl_les".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "lbl_les".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4.v),
                          SizedBox(
                            width: 169.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 13.adaptSize,
                                  width: 13.adaptSize,
                                  margin: EdgeInsets.only(bottom: 3.v),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4.h),
                                          decoration: AppDecoration
                                              .fillGray40001
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder2,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 1.v),
                                              Text(
                                                "lbl_e".tr,
                                                style:
                                                    theme.textTheme.labelSmall,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          width: 13.adaptSize,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.h,
                                            vertical: 1.v,
                                          ),
                                          decoration: AppDecoration
                                              .fillGray40001
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder2,
                                          ),
                                          child: Text(
                                            "lbl_e".tr,
                                            style: theme.textTheme.labelSmall,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 18.v,
                                  width: 31.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_song".tr,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_song".tr,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 7.v),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 3.adaptSize,
                                          width: 3.adaptSize,
                                          decoration: BoxDecoration(
                                            color: appTheme.gray40001,
                                            borderRadius: BorderRadius.circular(
                                              1.h,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 3.adaptSize,
                                          width: 3.adaptSize,
                                          decoration: BoxDecoration(
                                            color: appTheme.gray40001,
                                            borderRadius: BorderRadius.circular(
                                              1.h,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 18.v,
                                  width: 107.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "msg_childish_gambino".tr,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "msg_childish_gambino".tr,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 53.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgImage2,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 9.v,
          bottom: 12.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_your_library".tr,
        margin: EdgeInsets.only(left: 7.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPlus,
          margin: EdgeInsets.fromLTRB(15.h, 11.v, 15.h, 18.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 83.h,
            padding: EdgeInsets.symmetric(
              horizontal: 19.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder17,
            ),
            child: Text(
              "lbl_playlists".tr,
              style: CustomTextStyles.labelLargePrimary,
            ),
          ),
          Container(
            width: 73.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder17,
            ),
            child: Text(
              "lbl_artists".tr,
              style: CustomTextStyles.labelLargePrimary,
            ),
          ),
          Container(
            width: 79.h,
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder17,
            ),
            child: Text(
              "lbl_albums".tr,
              style: CustomTextStyles.labelLargePrimary,
            ),
          ),
          SizedBox(
            height: 33.v,
            width: 146.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 23.h),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 146.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder17,
                    ),
                    child: Text(
                      "msg_podcasts_shows".tr,
                      style: CustomTextStyles.labelLargePrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowNarrowDown(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 12.v,
              width: 17.h,
              margin: EdgeInsets.only(bottom: 3.v),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowNarrowDownPrimary,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    alignment: Alignment.centerLeft,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowNarrowDownPrimary11x11,
                    height: 11.adaptSize,
                    width: 11.adaptSize,
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ),
            Text(
              "lbl_recently_played".tr,
              style: CustomTextStyles.labelLargePrimarySemiBold,
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgGrid,
              height: 16.v,
              width: 15.h,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 9.h,
        right: 187.h,
      ),
      child: BlocSelector<LibraryBloc, LibraryState, LibraryModel?>(
        selector: (state) => state.libraryModelObj,
        builder: (context, libraryModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 19.v,
              );
            },
            itemCount: libraryModelObj?.userprofile1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofile1ItemModel model =
                  libraryModelObj?.userprofile1ItemList[index] ??
                      Userprofile1ItemModel();
              return Userprofile1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
