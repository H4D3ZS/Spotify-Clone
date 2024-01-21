import '../models/editorspicks_item_model.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';

// ignore: must_be_immutable
class EditorspicksItemWidget extends StatelessWidget {
  EditorspicksItemWidget(
    this.editorspicksItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EditorspicksItemModel editorspicksItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 161.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: editorspicksItemModelObj?.image,
            height: 154.adaptSize,
            width: 154.adaptSize,
            margin: EdgeInsets.only(left: 7.h),
          ),
          SizedBox(height: 6.v),
          SizedBox(
            width: 133.h,
            child: Text(
              editorspicksItemModelObj.text!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelMedium!.copyWith(
                height: 1.48,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
