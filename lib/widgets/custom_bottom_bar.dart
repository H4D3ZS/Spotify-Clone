import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearchPrimary,
      activeIcon: ImageConstant.imgSearchPrimary,
      title: "lbl_search".tr,
      type: BottomBarEnum.Search,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgThumbsUpGray40004,
      activeIcon: ImageConstant.imgThumbsUpGray40004,
      title: "lbl_your_library".tr,
      type: BottomBarEnum.Yourlibrary,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 400.h,
          child: Divider(
            color: appTheme.blueGray800,
          ),
        ),
        SizedBox(
          height: 78.v,
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedFontSize: 0,
            elevation: 0,
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: List.generate(bottomMenuList.length, (index) {
              return BottomNavigationBarItem(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 21.adaptSize,
                      width: 21.adaptSize,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSearch,
                            height: 21.adaptSize,
                            width: 21.adaptSize,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: bottomMenuList[index].icon,
                            height: 21.adaptSize,
                            width: 21.adaptSize,
                            color: theme.colorScheme.primary,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 16.v,
                      width: 33.h,
                      margin: EdgeInsets.only(top: 4.v),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: appTheme.gray300,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_search".tr,
                              style: CustomTextStyles.bodySmallGray40003,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 5.v,
                      width: 151.h,
                      margin: EdgeInsets.only(top: 15.v),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 151.h,
                              child: Divider(),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 151.h,
                              child: Divider(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                activeIcon: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.v,
                      width: 18.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgHome,
                            height: 20.v,
                            width: 18.h,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: bottomMenuList[index].activeIcon,
                            height: 20.v,
                            width: 18.h,
                            color: appTheme.gray40004,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 16.v,
                      width: 30.h,
                      margin: EdgeInsets.only(top: 6.v),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: appTheme.gray300,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_home".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                label: '',
              );
            }),
            onTap: (index) {
              selectedIndex = index;
              widget.onChanged?.call(bottomMenuList[index].type);
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}

enum BottomBarEnum {
  Home,
  Search,
  Yourlibrary,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
