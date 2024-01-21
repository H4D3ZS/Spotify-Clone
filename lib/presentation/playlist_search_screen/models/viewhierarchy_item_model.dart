import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.image1,
    this.text1,
    this.text2,
    this.image2,
    this.id,
  }) {
    image1 = image1 ?? ImageConstant.imgScreenShot2021120849x48;
    text1 = text1 ?? "Easy";
    text2 = text2 ?? "Troye Sivan";
    image2 = image2 ?? ImageConstant.imgSettingsGray50001;
    id = id ?? "";
  }

  String? image1;

  String? text1;

  String? text2;

  String? image2;

  String? id;
}
