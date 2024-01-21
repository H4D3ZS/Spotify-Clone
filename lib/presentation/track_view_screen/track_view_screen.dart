import 'bloc/track_view_bloc.dart';
import 'models/track_view_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/custom_elevated_button.dart';
import 'package:spotify_clone/widgets/custom_icon_button.dart';
import 'package:spotify_clone/presentation/listening_on_bottomsheet/listening_on_bottomsheet.dart';

class TrackViewScreen extends StatelessWidget {
  const TrackViewScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TrackViewBloc>(
        create: (context) =>
            TrackViewBloc(TrackViewState(trackViewModelObj: TrackViewModel()))
              ..add(TrackViewInitialEvent()),
        child: TrackViewScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrackViewBloc, TrackViewState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: SingleChildScrollView(
                      child: SizedBox(
                          height: SizeUtils.height,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.h, vertical: 52.v),
                                        decoration: AppDecoration
                                            .gradientRedToGray90013,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              _buildArrowDownRow(context),
                                              SizedBox(height: 81.v),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgScreenShot20211208380x380,
                                                  height: 380.adaptSize,
                                                  width: 380.adaptSize),
                                              SizedBox(height: 64.v),
                                              _buildFromMeToYouRow(context),
                                              SizedBox(height: 19.v),
                                              SliderTheme(
                                                  data: SliderThemeData(
                                                      trackShape:
                                                          RoundedRectSliderTrackShape(),
                                                      activeTrackColor: theme
                                                          .colorScheme.primary,
                                                      inactiveTrackColor:
                                                          appTheme.gray60006,
                                                      thumbColor: theme
                                                          .colorScheme.primary,
                                                      thumbShape:
                                                          RoundSliderThumbShape()),
                                                  child: Slider(
                                                      value: 33.42,
                                                      min: 0.0,
                                                      max: 100.0,
                                                      onChanged: (value) {})),
                                              _buildTimeRow(context),
                                              SizedBox(height: 18.v),
                                              _buildSettingsRow(context),
                                              SizedBox(height: 23.v),
                                              _buildIconsControlCRow(context),
                                              SizedBox(height: 37.v)
                                            ]))),
                                _buildFortyFiveRow(context)
                              ]))))));
    });
  }

  /// Section Widget
  Widget _buildArrowDownRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 21.adaptSize,
              width: 21.adaptSize,
              margin: EdgeInsets.only(bottom: 3.v)),
          Spacer(flex: 52),
          Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Text("lbl_1_remastered".tr,
                  style: CustomTextStyles.titleSmallSemiBold)),
          Spacer(flex: 47),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsPrimary,
              height: 27.adaptSize,
              width: 27.adaptSize,
              onTap: () {
                onTapImgSettings(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildFromMeToYouRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 5.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 52.v,
              width: 315.h,
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "msg_from_me_to_you3".tr,
                              style: CustomTextStyles.titleLargeffffffff),
                          TextSpan(
                              text: "lbl_t".tr,
                              style: CustomTextStyles.titleLargeffad8c8a)
                        ]),
                        textAlign: TextAlign.left)),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("lbl_the_beatles".tr,
                        style: CustomTextStyles.titleMediumGray40004))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgFavoriteGray40002,
              height: 22.v,
              width: 23.h,
              margin: EdgeInsets.only(left: 39.h, top: 25.v, bottom: 5.v))
        ]));
  }

  /// Section Widget
  Widget _buildTimeRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child:
              Text("lbl_0_38".tr, style: CustomTextStyles.labelMediumGray400)),
      Text("lbl_1_18".tr, style: CustomTextStyles.labelMediumGray400)
    ]);
  }

  /// Section Widget
  Widget _buildSettingsRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgSettingsPrimary22x22,
          height: 22.adaptSize,
          width: 22.adaptSize,
          margin: EdgeInsets.only(top: 23.v, bottom: 22.v)),
      Spacer(flex: 22),
      CustomImageView(
          imagePath: ImageConstant.imgContrast,
          height: 37.v,
          width: 36.h,
          margin: EdgeInsets.symmetric(vertical: 15.v)),
      Spacer(flex: 24),
      CustomIconButton(
          height: 67.adaptSize, width: 67.adaptSize, child: CustomImageView()),
      Spacer(flex: 28),
      CustomImageView(
          imagePath: ImageConstant.imgContrastPrimary,
          height: 26.v,
          width: 23.h,
          margin: EdgeInsets.only(top: 21.v, bottom: 19.v)),
      Spacer(flex: 24),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 16.v),
          child: Column(children: [
            CustomImageView(
                imagePath: ImageConstant.imgSettingsGreen40001,
                height: 29.adaptSize,
                width: 29.adaptSize),
            SizedBox(height: 1.v),
            Container(
                height: 4.adaptSize,
                width: 4.adaptSize,
                decoration: BoxDecoration(
                    color: appTheme.greenA70002,
                    borderRadius: BorderRadius.circular(2.h)))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildIconsControlCRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 5.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIconsControlC,
                  height: 22.adaptSize,
                  width: 22.adaptSize),
              GestureDetector(
                  onTap: () {
                    onTapTxtPrice(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(top: 2.v, bottom: 4.v),
                      child: Text("lbl_beatspill".tr,
                          style: CustomTextStyles.bodySmallGreenA700))),
              Spacer(flex: 82),
              CustomImageView(
                  imagePath: ImageConstant.imgTwitter,
                  height: 18.v,
                  width: 15.h,
                  margin: EdgeInsets.only(bottom: 3.v),
                  onTap: () {
                    onTapImgTwitter(context);
                  }),
              Spacer(flex: 17),
              Container(
                  height: 16.v,
                  width: 18.h,
                  margin: EdgeInsets.only(bottom: 4.v),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                            onTap: () {
                              onTapView(context);
                            },
                            child: Container(
                                height: 1.v,
                                width: 18.h,
                                margin: EdgeInsets.only(bottom: 6.v),
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgThumbsUpPrimary,
                        height: 16.v,
                        width: 18.h,
                        alignment: Alignment.center)
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildFortyFiveRow(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(left: 21.h, top: 862.v, right: 21.h),
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 11.v),
            decoration: AppDecoration.fillDeeporange700
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 6.h, top: 3.v, bottom: 18.v),
                      child: Text("lbl_lyrics".tr,
                          style: CustomTextStyles.titleMediumSemiBold18)),
                  CustomElevatedButton(
                      height: 28.v,
                      width: 77.h,
                      text: "lbl_more".tr,
                      margin: EdgeInsets.only(bottom: 18.v),
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 9.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgMap,
                              height: 12.adaptSize,
                              width: 12.adaptSize)),
                      buttonStyle: CustomButtonStyles.fillGrayTL14,
                      buttonTextStyle: CustomTextStyles.labelMediumPrimary)
                ])));
  }

  /// Navigates to the trackScreen when the action is triggered.
  onTapImgSettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trackScreen,
    );
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [ListeningOnBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapTxtPrice(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ListeningOnBottomsheet.builder(context),
        isScrollControlled: true);
  }

  /// Navigates to the songShareScreen when the action is triggered.
  onTapImgTwitter(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.songShareScreen,
    );
  }

  /// Navigates to the albumRadioScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.albumRadioScreen,
    );
  }
}
