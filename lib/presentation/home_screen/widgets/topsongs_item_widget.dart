import '../models/topsongs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';

// ignore: must_be_immutable
class TopsongsItemWidget extends StatelessWidget {
  TopsongsItemWidget(
    this.topsongsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TopsongsItemModel topsongsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 153.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: topsongsItemModelObj?.topSongsImage,
            height: 154.v,
            width: 153.h,
          ),
          SizedBox(height: 8.v),
          Text(
            topsongsItemModelObj.topSongsText!,
            style: CustomTextStyles.labelLargePrimarySemiBold_2,
          ),
        ],
      ),
    );
  }
}
