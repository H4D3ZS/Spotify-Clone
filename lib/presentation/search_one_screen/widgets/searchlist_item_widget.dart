import '../models/searchlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';

// ignore: must_be_immutable
class SearchlistItemWidget extends StatelessWidget {
  SearchlistItemWidget(
    this.searchlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchlistItemModel searchlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: searchlistItemModelObj?.screenShot,
      height: 448.v,
      width: 61.h,
    );
  }
}
