import '../search_page/widgets/searchlinks1_item_widget.dart';
import '../search_page/widgets/searchlinks2_item_widget.dart';
import '../search_page/widgets/searchlinks_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/search_model.dart';
import 'models/searchlinks1_item_model.dart';
import 'models/searchlinks2_item_model.dart';
import 'models/searchlinks_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_title.dart';
import 'package:spotify_clone/widgets/app_bar/appbar_trailing_image.dart';
import 'package:spotify_clone/widgets/app_bar/custom_app_bar.dart';
import 'package:spotify_clone/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => SearchBloc(SearchState(
        searchModelObj: SearchModel(),
      ))
        ..add(SearchInitialEvent()),
      child: SearchPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  right: 11.h,
                ),
                child: BlocSelector<SearchBloc, SearchState,
                    TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "msg_artists_songs".tr,
                      hintStyle: CustomTextStyles.titleMediumGray90005,
                      borderDecoration: SearchViewStyleHelper.fillPrimary,
                      fillColor: theme.colorScheme.primary,
                    );
                  },
                ),
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 9.h),
                child: Text(
                  "lbl_your_top_genres".tr,
                  style: CustomTextStyles.titleMediumSemiBold_1,
                ),
              ),
              SizedBox(height: 17.v),
              _buildSearchLinks(context),
              SizedBox(height: 37.v),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_popular_podcast".tr,
                  style: CustomTextStyles.titleMediumSemiBold_1,
                ),
              ),
              SizedBox(height: 14.v),
              _buildSearchLinks1(context),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "lbl_browse_all".tr,
                  style: CustomTextStyles.titleMediumSemiBold_1,
                ),
              ),
              SizedBox(height: 15.v),
              _buildSearchLinks2(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_search".tr,
        margin: EdgeInsets.only(left: 15.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCamera,
          margin: EdgeInsets.fromLTRB(22.h, 17.v, 22.h, 16.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchLinks(BuildContext context) {
    return SizedBox(
      height: 109.v,
      child: BlocSelector<SearchBloc, SearchState, SearchModel?>(
        selector: (state) => state.searchModelObj,
        builder: (context, searchModelObj) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 1.h,
              );
            },
            itemCount: searchModelObj?.searchlinksItemList.length ?? 0,
            itemBuilder: (context, index) {
              SearchlinksItemModel model =
                  searchModelObj?.searchlinksItemList[index] ??
                      SearchlinksItemModel();
              return SearchlinksItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchLinks1(BuildContext context) {
    return SizedBox(
      height: 109.v,
      child: BlocSelector<SearchBloc, SearchState, SearchModel?>(
        selector: (state) => state.searchModelObj,
        builder: (context, searchModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(
              left: 9.h,
              right: 6.h,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 13.h,
              );
            },
            itemCount: searchModelObj?.searchlinks1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Searchlinks1ItemModel model =
                  searchModelObj?.searchlinks1ItemList[index] ??
                      Searchlinks1ItemModel();
              return Searchlinks1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchLinks2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: BlocSelector<SearchBloc, SearchState, SearchModel?>(
        selector: (state) => state.searchModelObj,
        builder: (context, searchModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 110.v,
              crossAxisCount: 2,
              mainAxisSpacing: 13.h,
              crossAxisSpacing: 13.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: searchModelObj?.searchlinks2ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Searchlinks2ItemModel model =
                  searchModelObj?.searchlinks2ItemList[index] ??
                      Searchlinks2ItemModel();
              return Searchlinks2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
