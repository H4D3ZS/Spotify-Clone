import '../playlist_search_screen/widgets/viewhierarchy_item_widget.dart';
import 'bloc/playlist_search_bloc.dart';
import 'models/playlist_search_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_leading_image.dart';
import 'package:spotify_clone/widgets/app_bar/custom_app_bar.dart';
import 'package:spotify_clone/widgets/custom_elevated_button.dart';
import 'package:spotify_clone/widgets/custom_icon_button.dart';
import 'package:spotify_clone/widgets/custom_search_view.dart';

class PlaylistSearchScreen extends StatelessWidget {
  const PlaylistSearchScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PlaylistSearchBloc>(
        create: (context) => PlaylistSearchBloc(
            PlaylistSearchState(playlistSearchModelObj: PlaylistSearchModel()))
          ..add(PlaylistSearchInitialEvent()),
        child: PlaylistSearchScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 785.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topRight, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.only(top: 196.v),
                                child: Text("lbl_next".tr,
                                    style: CustomTextStyles
                                        .titleSmallBlack90001))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                height: 3.adaptSize,
                                width: 3.adaptSize,
                                margin:
                                    EdgeInsets.only(top: 320.v, right: 14.h),
                                decoration: BoxDecoration(
                                    color: appTheme.gray40001,
                                    borderRadius: BorderRadius.circular(1.h)))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                padding: EdgeInsets.symmetric(vertical: 3.v),
                                decoration: AppDecoration.gradientGrayToGray,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 25.v),
                                      _buildAppBar(context),
                                      SizedBox(height: 18.v),
                                      _buildFrameRow(context),
                                      SizedBox(height: 40.v),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgScreenShot20211208288x289,
                                          height: 288.v,
                                          width: 289.h,
                                          alignment: Alignment.center),
                                      SizedBox(height: 18.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 20.h),
                                          child: Text("msg_new_and_approved".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      SizedBox(height: 8.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 22.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSettingsGreenA70002,
                                                height: 20.adaptSize,
                                                width: 20.adaptSize,
                                                margin: EdgeInsets.only(
                                                    bottom: 2.v)),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.h),
                                                child: Text("lbl_spotify".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumSemiBold_1))
                                          ])),
                                      SizedBox(height: 21.v),
                                      Container(
                                          height: 3.adaptSize,
                                          width: 3.adaptSize,
                                          margin: EdgeInsets.only(left: 115.h),
                                          decoration: BoxDecoration(
                                              color: appTheme.gray50001,
                                              borderRadius:
                                                  BorderRadius.circular(1.h)))
                                    ]))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 19.h, bottom: 259.v),
                                child: Text("lbl_1_629_592_likes".tr,
                                    style: theme.textTheme.labelLarge))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 124.h, bottom: 259.v),
                                child: Text("lbl_6h_48m".tr,
                                    style: theme.textTheme.labelLarge))),
                        Padding(
                            padding:
                                EdgeInsets.only(right: 28.h, bottom: 234.v),
                            child: CustomIconButton(
                                height: 56.adaptSize,
                                width: 56.adaptSize,
                                padding: EdgeInsets.all(15.h),
                                decoration: IconButtonStyleHelper.fillGreenA,
                                alignment: Alignment.bottomRight,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgPlay))),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin:
                                    EdgeInsets.only(right: 30.h, bottom: 231.v),
                                padding: EdgeInsets.all(3.h),
                                decoration: AppDecoration.fillGray90009
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder7),
                                child: CustomImageView(
                                    imagePath: ImageConstant
                                        .imgSettingsGreenA7000212x12,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                    alignment: Alignment.center))),
                        _buildFavoriteColumn(context)
                      ])),
                  _buildHomeRow(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 16.v,
        leadingWidth: 427.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorPrimary15x9,
            margin: EdgeInsets.only(left: 21.h, right: 397.h),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 19.h, right: 15.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: BlocSelector<PlaylistSearchBloc, PlaylistSearchState,
                          TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                            controller: searchController,
                            hintText: "msg_find_in_playlist".tr,
                            borderDecoration: SearchViewStyleHelper.fillGrayTL6,
                            fillColor: appTheme.gray600);
                      })),
              CustomElevatedButton(
                  height: 38.v,
                  width: 64.h,
                  text: "lbl_sort".tr,
                  margin: EdgeInsets.only(left: 7.h),
                  buttonStyle: CustomButtonStyles.fillGrayTL6,
                  buttonTextStyle: CustomTextStyles.titleSmallSemiBold)
            ])));
  }

  /// Section Widget
  Widget _buildFavoriteColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 7.h, right: 11.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 16.h, right: 272.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgFavorite,
                                height: 19.v,
                                width: 20.h,
                                margin: EdgeInsets.only(top: 4.v, bottom: 5.v)),
                            Spacer(),
                            CustomImageView(
                                imagePath: ImageConstant.imgLightBulb,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                                margin: EdgeInsets.only(top: 2.v, bottom: 4.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgSettingsGray50001,
                                height: 28.adaptSize,
                                width: 28.adaptSize,
                                margin: EdgeInsets.only(left: 21.h),
                                onTap: () {
                                  onTapImgSettings(context);
                                })
                          ])),
                  SizedBox(height: 8.v),
                  BlocSelector<PlaylistSearchBloc, PlaylistSearchState,
                          PlaylistSearchModel?>(
                      selector: (state) => state.playlistSearchModelObj,
                      builder: (context, playlistSearchModelObj) {
                        return ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return Padding(
                                  padding:
                                      EdgeInsets.symmetric(vertical: 7.0.v),
                                  child: SizedBox(
                                      width: 213.h,
                                      child: Divider(
                                          height: 3.v,
                                          thickness: 3.v,
                                          color: appTheme.gray400)));
                            },
                            itemCount: playlistSearchModelObj
                                    ?.viewhierarchyItemList.length ??
                                0,
                            itemBuilder: (context, index) {
                              ViewhierarchyItemModel model =
                                  playlistSearchModelObj
                                          ?.viewhierarchyItemList[index] ??
                                      ViewhierarchyItemModel();
                              return ViewhierarchyItemWidget(model,
                                  onTapImgImage2: () {
                                onTapImgImage2(context);
                              });
                            });
                      })
                ])));
  }

  /// Section Widget
  Widget _buildHomeRow(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 20.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 39.v,
                  width: 35.h,
                  margin: EdgeInsets.only(left: 19.h, bottom: 14.v),
                  child: Stack(alignment: Alignment.topRight, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("lbl_home".tr,
                            style: theme.textTheme.bodyMedium)),
                    CustomImageView(
                        imagePath: ImageConstant.imgHomeFilled,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(right: 5.h))
                  ])),
              Spacer(flex: 55),
              Padding(
                  padding: EdgeInsets.only(bottom: 14.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSearch,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(left: 6.h)),
                        SizedBox(height: 1.v),
                        Text("lbl_search".tr, style: theme.textTheme.bodyMedium)
                      ])),
              Spacer(flex: 44),
              Padding(
                  padding: EdgeInsets.only(bottom: 13.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLibrarySmall,
                        height: 22.adaptSize,
                        width: 22.adaptSize),
                    SizedBox(height: 2.v),
                    Text("lbl_your_library".tr,
                        style: theme.textTheme.bodyMedium)
                  ]))
            ]));
  }

  /// Navigates to the albumControlScreen when the action is triggered.
  onTapImgImage2(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.albumControlScreen);
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
}
