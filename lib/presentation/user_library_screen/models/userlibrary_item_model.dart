import '../../../core/app_export.dart';

/// This class is used in the [userlibrary_item_widget] screen.
class UserlibraryItemModel {
  UserlibraryItemModel({
    this.userImage,
    this.userName,
    this.likesCount,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgScreenShot2021121050x50;
    userName = userName ?? "Shazam";
    likesCount = likesCount ?? "7 likes";
    id = id ?? "";
  }

  String? userImage;

  String? userName;

  String? likesCount;

  String? id;
}
