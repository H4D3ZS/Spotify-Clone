import '../../../core/app_export.dart';

/// This class is used in the [searchlist_item_widget] screen.
class SearchlistItemModel {
  SearchlistItemModel({
    this.screenShot,
    this.id,
  }) {
    screenShot = screenShot ?? ImageConstant.imgScreenShot20211207448x61;
    id = id ?? "";
  }

  String? screenShot;

  String? id;
}
