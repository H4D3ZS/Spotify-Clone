import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';
import 'package:spotify_clone/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 67.adaptSize,
          width: 67.adaptSize,
          padding: EdgeInsets.all(23.h),
          decoration: IconButtonStyleHelper.gradientPrimaryContainerToTeal,
          child: CustomImageView(
            imagePath: userprofile1ItemModelObj?.favorite,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 14.h,
            top: 9.v,
            bottom: 15.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userprofile1ItemModelObj.likedSongs!,
                style: CustomTextStyles.titleSmallSemiBold_1,
              ),
              SizedBox(height: 3.v),
              SizedBox(
                width: 119.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: userprofile1ItemModelObj?.playlistImage,
                      height: 13.v,
                      width: 8.h,
                      margin: EdgeInsets.only(top: 3.v),
                    ),
                    Text(
                      userprofile1ItemModelObj.playlistText!,
                      style: theme.textTheme.labelLarge,
                    ),
                    Container(
                      height: 3.adaptSize,
                      width: 3.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 7.v),
                      decoration: BoxDecoration(
                        color: appTheme.gray40004,
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                    Text(
                      userprofile1ItemModelObj.songsCount!,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
