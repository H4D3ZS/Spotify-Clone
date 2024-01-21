import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.titleText,
    this.artistText,
    this.id,
  }) {
    titleText = titleText ?? "Troubled Paradise";
    artistText = artistText ?? "Slayyter";
    id = id ?? "";
  }

  String? titleText;

  String? artistText;

  String? id;
}
