import '../album_radio_screen/widgets/userprofile_item_widget.dart';
import 'bloc/album_radio_bloc.dart';
import 'models/album_radio_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/custom_icon_button.dart';

class AlbumRadioScreen extends StatelessWidget {
  const AlbumRadioScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AlbumRadioBloc>(
        create: (context) => AlbumRadioBloc(
            AlbumRadioState(albumRadioModelObj: AlbumRadioModel()))
          ..add(AlbumRadioInitialEvent()),
        child: AlbumRadioScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 56.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 3.h, right: 73.h),
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(top: 6.v),
                                child: CustomIconButton(
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    padding: EdgeInsets.all(8.h),
                                    decoration: IconButtonStyleHelper.fillBlack,
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgSettingsPrimary32x32))),
                            Container(
                                width: 206.h,
                                margin: EdgeInsets.only(left: 77.h),
                                child: Text("msg_album_radio_based".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.titleSmallSemiBold))
                          ])),
                      SizedBox(height: 20.v),
                      Text("lbl_now_playing".tr,
                          style: CustomTextStyles.titleSmallBold),
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgScreenShot2021120846x46,
                                height: 46.adaptSize,
                                width: 46.adaptSize,
                                radius: BorderRadius.circular(4.h)),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h, top: 6.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtFromMeToYou(context);
                                          },
                                          child: Text("msg_from_me_to_you".tr,
                                              style: CustomTextStyles
                                                  .labelLargeGreenA70002)),
                                      SizedBox(height: 1.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 4.h),
                                          child: Text("lbl_washed_out".tr,
                                              style:
                                                  theme.textTheme.labelLarge))
                                    ]))
                          ])),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("msg_next_from_from".tr,
                              style: CustomTextStyles.titleSmallBold)),
                      SizedBox(height: 15.v),
                      _buildUserProfile(context),
                      SizedBox(height: 49.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 51.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgClockGreenA70003,
                                        height: 22.v,
                                        width: 30.h,
                                        margin: EdgeInsets.only(
                                            top: 19.v, bottom: 18.v)),
                                    Spacer(flex: 25),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgContrast,
                                        height: 23.v,
                                        width: 21.h,
                                        margin: EdgeInsets.only(
                                            top: 19.v, bottom: 17.v)),
                                    Spacer(flex: 24),
                                    CustomIconButton(
                                        height: 59.adaptSize,
                                        width: 59.adaptSize,
                                        padding: EdgeInsets.all(18.h),
                                        decoration: IconButtonStyleHelper
                                            .fillPrimaryTL29,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorGray90006)),
                                    Spacer(flex: 24),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgContrastPrimary23x21,
                                        height: 23.v,
                                        width: 21.h,
                                        margin: EdgeInsets.only(
                                            top: 19.v, bottom: 17.v)),
                                    Spacer(flex: 25),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorPrimary,
                                        height: 25.v,
                                        width: 30.h,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 17.v))
                                  ]))),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 11.h, right: 21.h),
            child:
                BlocSelector<AlbumRadioBloc, AlbumRadioState, AlbumRadioModel?>(
                    selector: (state) => state.albumRadioModelObj,
                    builder: (context, albumRadioModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 22.v);
                          },
                          itemCount:
                              albumRadioModelObj?.userprofileItemList.length ??
                                  0,
                          itemBuilder: (context, index) {
                            UserprofileItemModel model = albumRadioModelObj
                                    ?.userprofileItemList[index] ??
                                UserprofileItemModel();
                            return UserprofileItemWidget(model);
                          });
                    })));
  }

  /// Navigates to the trackViewScreen when the action is triggered.
  onTapTxtFromMeToYou(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trackViewScreen,
    );
  }
}
