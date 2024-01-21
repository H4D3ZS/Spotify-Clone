import 'bloc/scanning_for_spotify_codes_bloc.dart';
import 'models/scanning_for_spotify_codes_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';

class ScanningForSpotifyCodesScreen extends StatelessWidget {
  const ScanningForSpotifyCodesScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ScanningForSpotifyCodesBloc>(
        create: (context) => ScanningForSpotifyCodesBloc(
            ScanningForSpotifyCodesState(
                scanningForSpotifyCodesModelObj:
                    ScanningForSpotifyCodesModel()))
          ..add(ScanningForSpotifyCodesInitialEvent()),
        child: ScanningForSpotifyCodesScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScanningForSpotifyCodesBloc,
        ScanningForSpotifyCodesState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 9.v),
                  child: Column(children: [
                    _buildScanningForSpotifyStack(context),
                    SizedBox(height: 56.v),
                    Container(
                        height: 307.v,
                        width: 241.h,
                        decoration: BoxDecoration(
                            color: appTheme.black900,
                            borderRadius: BorderRadius.circular(7.h),
                            border: Border.all(
                                color: theme.colorScheme.primary, width: 2.h))),
                    SizedBox(height: 37.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgComponent30,
                        height: 39.v,
                        width: 75.h),
                    SizedBox(height: 20.v),
                    SizedBox(
                        width: 214.h,
                        child: Text("msg_point_your_camera".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleLarge!
                                .copyWith(height: 1.60))),
                    SizedBox(height: 44.v),
                    Text("msg_select_from_photos".tr,
                        style: CustomTextStyles.titleSmallBold14),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildScanningForSpotifyStack(BuildContext context) {
    return SizedBox(
        height: 72.v,
        width: 388.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 18.v,
                  width: 383.h,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onErrorContainer,
                      borderRadius: BorderRadius.circular(9.h)))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 59.v,
                  width: 383.h,
                  decoration: BoxDecoration(color: appTheme.gray90011))),
          CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 15.adaptSize,
              width: 15.adaptSize,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 18.v),
              onTap: () {
                onTapImgClose(context);
              })
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
