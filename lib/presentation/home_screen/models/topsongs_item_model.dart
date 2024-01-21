import '../../../core/app_export.dart';

/// This class is used in the [topsongs_item_widget] screen.
class TopsongsItemModel {
  TopsongsItemModel({
    this.topSongsImage,
    this.topSongsText,
    this.id,
  }) {
    topSongsImage = topSongsImage ?? ImageConstant.imgScreenShot20211207154x153;
    topSongsText = topSongsText ?? "Your Top Songs 2021";
    id = id ?? "";
  }

  String? topSongsImage;

  String? topSongsText;

  String? id;
}
