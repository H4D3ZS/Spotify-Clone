import 'bloc/search_container_bloc.dart';
import 'models/search_container_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/presentation/library_page/library_page.dart';
import 'package:spotify_clone/presentation/search_page/search_page.dart';
import 'package:spotify_clone/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class SearchContainerScreen extends StatelessWidget {
  SearchContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchContainerBloc>(
        create: (context) => SearchContainerBloc(SearchContainerState(
            searchContainerModelObj: SearchContainerModel()))
          ..add(SearchContainerInitialEvent()),
        child: SearchContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchContainerBloc, SearchContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.searchPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 8.h),
                  child: _buildBottomBar(context))));
    });
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
}
