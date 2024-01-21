import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
    this.onTapImgImage2,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  VoidCallback? onTapImgImage2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 126.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: viewhierarchyItemModelObj?.image1,
                height: 49.v,
                width: 48.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  bottom: 5.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      viewhierarchyItemModelObj.text1!,
                      style: CustomTextStyles.titleMedium_1,
                    ),
                    Text(
                      viewhierarchyItemModelObj.text2!,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: viewhierarchyItemModelObj?.image2,
          height: 27.adaptSize,
          width: 27.adaptSize,
          margin: EdgeInsets.only(
            left: 231.h,
            top: 11.v,
            bottom: 11.v,
          ),
          onTap: () {
            onTapImgImage2!.call();
          },
        ),
      ],
    );
  }
}
