import '../../../core/app_export.dart';

/// This class is used in the [searchlinks_item_widget] screen.
class SearchlinksItemModel {
  SearchlinksItemModel({
    this.text,
    this.text1,
    this.image,
    this.id,
  }) {
    text = text ?? "Pop";
    text1 = text1 ?? "Album";
    image = image ?? ImageConstant.imgCuartetoIbai;
    id = id ?? "";
  }

  String? text;

  String? text1;

  String? image;

  String? id;
}
