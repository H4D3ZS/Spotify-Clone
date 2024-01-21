import '../models/searchlinks1_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:spotify_clone/core/app_export.dart';

// ignore: must_be_immutable
class Searchlinks1ItemWidget extends StatelessWidget {
  Searchlinks1ItemWidget(
    this.searchlinks1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Searchlinks1ItemModel searchlinks1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillBlueA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder2,
      ),
      width: 192.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 61.h,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 47.v,
            ),
            child: Text(
              searchlinks1ItemModelObj.newsPolitics!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMediumBold_1.copyWith(
                height: 1.56,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 56.h,
              top: 28.v,
            ),
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
                      searchlinks1ItemModelObj.album!,
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
        ],
      ),
    );
  }
}
