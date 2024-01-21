import '../../../core/app_export.dart';

/// This class is used in the [searchlinks1_item_widget] screen.
class Searchlinks1ItemModel {
  Searchlinks1ItemModel({
    this.newsPolitics,
    this.album,
    this.id,
  }) {
    newsPolitics = newsPolitics ?? "News & Politics";
    album = album ?? "Album";
    id = id ?? "";
  }

  String? newsPolitics;

  String? album;

  String? id;
}
