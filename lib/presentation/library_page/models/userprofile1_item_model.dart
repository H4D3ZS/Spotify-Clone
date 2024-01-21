import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.favorite,
    this.likedSongs,
    this.playlistImage,
    this.playlistText,
    this.songsCount,
    this.id,
  }) {
    favorite = favorite ?? ImageConstant.imgFavoritePrimary;
    likedSongs = likedSongs ?? "Liked Songs";
    playlistImage = playlistImage ?? ImageConstant.imgSettingsGreenA7000213x8;
    playlistText = playlistText ?? "Playlist ";
    songsCount = songsCount ?? "58 songs";
    id = id ?? "";
  }

  String? favorite;

  String? likedSongs;

  String? playlistImage;

  String? playlistText;

  String? songsCount;

  String? id;
}
