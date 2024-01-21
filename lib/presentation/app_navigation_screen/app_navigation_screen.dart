import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Start".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.startScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SIgnup-One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Signup-Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Signup-Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Signup-Four".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Choose Artists".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chooseArtistsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Chose Podcasts".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chosePodcastsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home ".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Album View".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.albumViewScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Album Control".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.albumControlScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Track View".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.trackViewScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Track ".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.trackScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Song Share".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.songShareScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Album Radio".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.albumRadioScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Playlist Search".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.playlistSearchScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "User Library".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.userLibraryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Settings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Scanning for Spotify codes".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.scanningForSpotifyCodesScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
