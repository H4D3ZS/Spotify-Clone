import 'bloc/listening_on_bloc.dart';
import 'models/listening_on_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/custom_elevated_button.dart';
import 'package:spotify_clone/widgets/custom_outlined_button.dart';

class ListeningOnBottomsheet extends StatelessWidget {
  const ListeningOnBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ListeningOnBloc>(
        create: (context) => ListeningOnBloc(
            ListeningOnState(listeningOnModelObj: ListeningOnModel()))
          ..add(ListeningOnInitialEvent()),
        child: ListeningOnBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 426.h,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 11.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: 62.h,
                      child: Divider(color: appTheme.blueGray70001))),
              SizedBox(height: 28.v),
              _buildListeningOnSection(context),
              SizedBox(height: 28.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text("lbl_select_a_device".tr,
                      style: CustomTextStyles.titleMediumBold_1)),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgComponent36,
                            height: 28.v,
                            width: 30.h,
                            margin: EdgeInsets.only(top: 6.v, bottom: 9.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text("lbl_bravia_4k_gb".tr,
                                          style: CustomTextStyles
                                              .titleMediumSemiBold17_1)),
                                  SizedBox(height: 2.v),
                                  Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgSettingsGray4000415x19,
                                        height: 15.v,
                                        width: 19.h,
                                        margin: EdgeInsets.only(top: 1.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text("lbl_google_cast".tr,
                                            style:
                                                CustomTextStyles.labelLarge12))
                                  ])
                                ]))
                      ])),
              SizedBox(height: 29.v),
              _buildComputerSection(context),
              SizedBox(height: 35.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSettingsGray400,
                            height: 35.v,
                            width: 36.h),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 15.h, top: 5.v, bottom: 7.v),
                            child: Text("msg_airplay_or_bluetooth".tr,
                                style: CustomTextStyles.titleMediumSemiBold))
                      ])),
              SizedBox(height: 37.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_start_a_group_session".tr,
                            style: CustomTextStyles.titleMediumBold18_1),
                        Container(
                            width: 32.h,
                            margin: EdgeInsets.only(
                                left: 6.h, top: 2.v, bottom: 4.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.h, vertical: 2.v),
                            decoration: AppDecoration.fillGray40001.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder2),
                            child: Text("lbl_beta".tr,
                                style: CustomTextStyles.labelSmallBold))
                      ])),
              SizedBox(height: 8.v),
              Container(
                  width: 369.h,
                  margin: EdgeInsets.only(left: 8.h, right: 9.h),
                  child: Text("msg_listen_with_friends".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLarge12_1
                          .copyWith(height: 1.60))),
              SizedBox(height: 24.v),
              CustomImageView(
                  imagePath: ImageConstant.imgImage258x59,
                  height: 58.v,
                  width: 59.h,
                  radius: BorderRadius.circular(29.h),
                  margin: EdgeInsets.only(left: 158.h)),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                  height: 49.v,
                  width: 169.h,
                  text: "lbl_start_session".tr,
                  buttonStyle: CustomButtonStyles.fillGreenATL21,
                  buttonTextStyle: CustomTextStyles.titleMediumBlack90001,
                  alignment: Alignment.center),
              SizedBox(height: 13.v),
              CustomOutlinedButton(
                  height: 28.v,
                  width: 106.h,
                  text: "lbl_scan_to_join".tr,
                  buttonStyle: CustomButtonStyles.outlineGray,
                  buttonTextStyle: CustomTextStyles.labelLargePrimarySemiBold_1,
                  alignment: Alignment.center),
              Spacer(),
              SizedBox(height: 24.v),
              _buildFrameSection(context)
            ]));
  }

  /// Section Widget
  Widget _buildListeningOnSection(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                      height: 56.v,
                      child: VerticalDivider(
                          width: 4.h,
                          thickness: 4.v,
                          color: appTheme.greenA70001,
                          indent: 27.h,
                          endIndent: 11.h)),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: SizedBox(
                          height: 55.v,
                          child: VerticalDivider(
                              width: 4.h,
                              thickness: 4.v,
                              color: appTheme.greenA70001,
                              indent: 27.h,
                              endIndent: 11.h))),
                  Container(
                      height: 14.v,
                      width: 4.h,
                      margin:
                          EdgeInsets.only(left: 3.h, top: 31.v, bottom: 11.v),
                      decoration: BoxDecoration(color: appTheme.greenA70001)),
                  Container(
                      height: 11.v,
                      width: 4.h,
                      margin:
                          EdgeInsets.only(left: 3.h, top: 34.v, bottom: 11.v),
                      decoration: BoxDecoration(color: appTheme.greenA70001)),
                  Container(
                      height: 55.v,
                      width: 134.h,
                      margin: EdgeInsets.only(left: 15.h),
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                                height: 35.v,
                                width: 132.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("lbl_listening_on".tr,
                                              style: theme
                                                  .textTheme.headlineSmall)),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("lbl_listening_on".tr,
                                              style: theme
                                                  .textTheme.headlineSmall))
                                    ]))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconsControlC,
                                  height: 15.adaptSize,
                                  width: 15.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 3.v, bottom: 2.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Text("lbl_beatspill2".tr,
                                      style:
                                          CustomTextStyles.titleSmallGreenA700))
                            ]))
                      ])),
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgClose,
                      height: 13.adaptSize,
                      width: 13.adaptSize,
                      margin: EdgeInsets.only(bottom: 43.v),
                      onTap: () {
                        onTapImgClose(context);
                      })
                ])));
  }

  /// Section Widget
  Widget _buildComputerSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgComputer,
              height: 32.adaptSize,
              width: 32.adaptSize,
              margin: EdgeInsets.only(bottom: 3.v)),
          Padding(
              padding: EdgeInsets.only(left: 23.h, top: 5.v, bottom: 7.v),
              child: Text("msg_momitha_s_macbook".tr,
                  style: CustomTextStyles.titleMediumSemiBold)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgTelevisionGray60003,
              height: 35.adaptSize,
              width: 35.adaptSize,
              onTap: () {
                onTapImgTelevision(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildFrameSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgUserGray400,
              height: 17.adaptSize,
              width: 17.adaptSize),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: SliderTheme(
                      data: SliderThemeData(
                          trackShape: RoundedRectSliderTrackShape(),
                          activeTrackColor: appTheme.greenA70002,
                          inactiveTrackColor: appTheme.gray60006,
                          thumbColor: theme.colorScheme.primary,
                          thumbShape: RoundSliderThumbShape()),
                      child: Slider(
                          value: 37.32,
                          min: 0.0,
                          max: 100.0,
                          onChanged: (value) {}))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgClose(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the albumControlScreen when the action is triggered.
  onTapImgTelevision(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.albumControlScreen,
    );
  }
}
