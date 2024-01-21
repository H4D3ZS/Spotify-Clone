import '../../../core/app_export.dart';

/// This class is used in the [searchlinks2_item_widget] screen.
class Searchlinks2ItemModel {
  Searchlinks2ItemModel({
    this.title,
    this.albumText,
    this.id,
  }) {
    title = title ?? "2021 Wrapped";
    albumText = albumText ?? "Album";
    id = id ?? "";
  }

  String? title;

  String? albumText;

  String? id;
}
