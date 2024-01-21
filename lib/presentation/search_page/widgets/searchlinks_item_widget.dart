import '../models/searchlinks_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:spotify_clone/core/app_export.dart';

// ignore: must_be_immutable
class SearchlinksItemWidget extends StatelessWidget {
  SearchlinksItemWidget(
    this.searchlinksItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchlinksItemModel searchlinksItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder2,
      ),
      width: 192.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 17.v,
              bottom: 69.v,
            ),
            child: Text(
              searchlinksItemModelObj.text!,
              style: CustomTextStyles.titleMediumBold_1,
            ),
          ),
          Container(
            height: 81.v,
            width: 60.h,
            margin: EdgeInsets.only(
              left: 84.h,
              top: 28.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder2,
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup70,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      width: 60.h,
                      padding: EdgeInsets.symmetric(vertical: 19.v),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder2,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 6.v),
                          SizedBox(
                            width: 36.h,
                            child: Text(
                              searchlinksItemModelObj.text1!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.labelLargePrimaryBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 81.v,
                    width: 60.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imageNotFound,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: searchlinksItemModelObj?.image,
                      height: 81.v,
                      width: 60.h,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
