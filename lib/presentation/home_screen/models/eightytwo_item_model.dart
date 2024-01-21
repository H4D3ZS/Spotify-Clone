import '../../../core/app_export.dart';

/// This class is used in the [eightytwo_item_widget] screen.
class EightytwoItemModel {
  EightytwoItemModel({
    this.image,
    this.text,
    this.id,
  }) {
    image = image ?? ImageConstant.imgScreenShot20211208;
    text = text ?? "1(Remastered)";
    id = id ?? "";
  }

  String? image;

  String? text;

  String? id;
}
