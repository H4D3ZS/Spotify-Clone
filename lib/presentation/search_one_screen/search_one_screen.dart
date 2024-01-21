import '../search_one_screen/widgets/searchlist_item_widget.dart';
import 'bloc/search_one_bloc.dart';
import 'models/search_one_model.dart';
import 'models/searchlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/custom_search_view.dart';

class SearchOneScreen extends StatelessWidget {
  const SearchOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchOneBloc>(
      create: (context) => SearchOneBloc(SearchOneState(
        searchOneModelObj: SearchOneModel(),
      ))
        ..add(SearchOneInitialEvent()),
      child: SearchOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 14.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchRow(context),
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(left: 9.h),
                child: Text(
                  "lbl_recent_searches".tr,
                  style: CustomTextStyles.titleMediumSemiBold17,
                ),
              ),
              SizedBox(height: 5.v),
              _buildSearchList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: BlocSelector<SearchOneBloc, SearchOneState,
              TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return CustomSearchView(
                controller: searchController,
                hintText: "lbl_search".tr,
                hintStyle: theme.textTheme.titleSmall!,
                contentPadding: EdgeInsets.only(
                  top: 7.v,
                  right: 30.h,
                  bottom: 7.v,
                ),
                borderDecoration: SearchViewStyleHelper.fillGrayTL10,
                fillColor: appTheme.gray90010,
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            top: 6.v,
            bottom: 7.v,
          ),
          child: Text(
            "lbl_cancel".tr,
            style: theme.textTheme.titleSmall,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 155.h),
      child: BlocSelector<SearchOneBloc, SearchOneState, SearchOneModel?>(
        selector: (state) => state.searchOneModelObj,
        builder: (context, searchOneModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 1.v,
              );
            },
            itemCount: searchOneModelObj?.searchlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              SearchlistItemModel model =
                  searchOneModelObj?.searchlistItemList[index] ??
                      SearchlistItemModel();
              return SearchlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
