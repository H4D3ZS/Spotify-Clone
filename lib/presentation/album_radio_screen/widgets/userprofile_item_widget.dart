import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 13.v,
                  bottom: 8.v,
                ),
                padding: EdgeInsets.all(1.h),
                decoration: AppDecoration.fillGray60001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Container(
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.gray90012,
                    borderRadius: BorderRadius.circular(
                      9.h,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofileItemModelObj.titleText!,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 2.v),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        userprofileItemModelObj.artistText!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMegaphone,
            height: 10.v,
            width: 20.h,
            margin: EdgeInsets.only(
              top: 18.v,
              bottom: 13.v,
            ),
          ),
        ],
      ),
    );
  }
}
