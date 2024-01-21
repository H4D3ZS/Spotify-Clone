import '../models/searchlinks2_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:spotify_clone/core/app_export.dart';

// ignore: must_be_immutable
class Searchlinks2ItemWidget extends StatelessWidget {
  Searchlinks2ItemWidget(
    this.searchlinks2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Searchlinks2ItemModel searchlinks2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 15.v,
              bottom: 71.v,
            ),
            child: Text(
              searchlinks2ItemModelObj.title!,
              style: CustomTextStyles.titleMediumBold_1,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 5.h,
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
                      searchlinks2ItemModelObj.albumText!,
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
