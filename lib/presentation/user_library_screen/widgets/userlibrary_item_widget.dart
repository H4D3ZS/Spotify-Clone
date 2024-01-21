import '../models/userlibrary_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';

// ignore: must_be_immutable
class UserlibraryItemWidget extends StatelessWidget {
  UserlibraryItemWidget(
    this.userlibraryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserlibraryItemModel userlibraryItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: userlibraryItemModelObj?.userImage,
          height: 50.adaptSize,
          width: 50.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 14.h,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userlibraryItemModelObj.userName!,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 5.v),
              Text(
                userlibraryItemModelObj.likesCount!,
                style: theme.textTheme.labelLarge,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightPrimary16x16,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(
            top: 15.v,
            bottom: 18.v,
          ),
        ),
      ],
    );
  }
}
