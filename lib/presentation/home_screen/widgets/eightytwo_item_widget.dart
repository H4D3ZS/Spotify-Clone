import '../models/eightytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';

// ignore: must_be_immutable
class EightytwoItemWidget extends StatelessWidget {
  EightytwoItemWidget(
    this.eightytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightytwoItemModel eightytwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 106.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: eightytwoItemModelObj?.image,
              height: 105.adaptSize,
              width: 105.adaptSize,
              margin: EdgeInsets.only(left: 1.h),
            ),
            SizedBox(height: 6.v),
            Text(
              eightytwoItemModelObj.text!,
              style: CustomTextStyles.labelLargePrimarySemiBold12,
            ),
          ],
        ),
      ),
    );
  }
}
