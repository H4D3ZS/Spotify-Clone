import 'bloc/chose_podcasts_bloc.dart';
import 'models/chose_podcasts_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/custom_search_view.dart';

class ChosePodcastsScreen extends StatelessWidget {
  const ChosePodcastsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChosePodcastsBloc>(
      create: (context) => ChosePodcastsBloc(ChosePodcastsState(
        chosePodcastsModelObj: ChosePodcastsModel(),
      ))
        ..add(ChosePodcastsInitialEvent()),
      child: ChosePodcastsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(9.h),
          child: Column(
            children: [
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 231.h,
                  margin: EdgeInsets.only(left: 18.h),
                  child: Text(
                    "msg_now_choose_some".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.headlineMediumBold.copyWith(
                      height: 1.08,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  right: 16.h,
                ),
                child: BlocSelector<ChosePodcastsBloc, ChosePodcastsState,
                    TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 47.v),
              SizedBox(
                height: 675.v,
                width: 408.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "lbl_next".tr,
                        style: CustomTextStyles.titleSmallBlack90001,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImg27641,
                      height: 666.v,
                      width: 408.h,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
