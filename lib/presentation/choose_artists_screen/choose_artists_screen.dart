import 'bloc/choose_artists_bloc.dart';
import 'models/choose_artists_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:spotify_clone/widgets/app_bar/custom_app_bar.dart';
import 'package:spotify_clone/widgets/custom_search_view.dart';

class ChooseArtistsScreen extends StatelessWidget {
  const ChooseArtistsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChooseArtistsBloc>(
        create: (context) => ChooseArtistsBloc(
            ChooseArtistsState(chooseArtistsModelObj: ChooseArtistsModel()))
          ..add(ChooseArtistsInitialEvent()),
        child: ChooseArtistsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 9.v),
                  Padding(
                      padding: EdgeInsets.only(left: 31.h, right: 28.h),
                      child: BlocSelector<ChooseArtistsBloc, ChooseArtistsState,
                              TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                                controller: searchController,
                                hintText: "lbl_search".tr);
                          })),
                  SizedBox(height: 21.v),
                  SizedBox(
                      height: 776.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.only(top: 91.v),
                                child: Text("lbl_next".tr,
                                    style: CustomTextStyles
                                        .titleSmallBlack90001))),
                        CustomImageView(
                            imagePath: ImageConstant.imgImg27621,
                            height: 776.v,
                            width: 428.h,
                            alignment: Alignment.center)
                      ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftPrimary,
            margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "msg_choose_3_or_more".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
