import '../../../core/app_export.dart';

/// This class is used in the [editorspicks_item_widget] screen.
class EditorspicksItemModel {
  EditorspicksItemModel({
    this.image,
    this.text,
    this.id,
  }) {
    image = image ?? ImageConstant.imgScreenShot20211207154x154;
    text = text ?? "Ed Sheeran, Big Sean, \nJuice WRLD, Post Malone";
    id = id ?? "";
  }

  String? image;

  String? text;

  String? id;
}
