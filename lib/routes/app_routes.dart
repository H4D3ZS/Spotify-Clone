import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/start_screen/start_screen.dart';
import 'package:spotify_clone/presentation/signup_one_screen/signup_one_screen.dart';
import 'package:spotify_clone/presentation/signup_two_screen/signup_two_screen.dart';
import 'package:spotify_clone/presentation/signup_three_screen/signup_three_screen.dart';
import 'package:spotify_clone/presentation/signup_four_screen/signup_four_screen.dart';
import 'package:spotify_clone/presentation/choose_artists_screen/choose_artists_screen.dart';
import 'package:spotify_clone/presentation/chose_podcasts_screen/chose_podcasts_screen.dart';
import 'package:spotify_clone/presentation/home_screen/home_screen.dart';
import 'package:spotify_clone/presentation/search_one_screen/search_one_screen.dart';
import 'package:spotify_clone/presentation/search_container_screen/search_container_screen.dart';
import 'package:spotify_clone/presentation/album_view_screen/album_view_screen.dart';
import 'package:spotify_clone/presentation/album_control_screen/album_control_screen.dart';
import 'package:spotify_clone/presentation/track_view_screen/track_view_screen.dart';
import 'package:spotify_clone/presentation/track_screen/track_screen.dart';
import 'package:spotify_clone/presentation/song_share_screen/song_share_screen.dart';
import 'package:spotify_clone/presentation/album_radio_screen/album_radio_screen.dart';
import 'package:spotify_clone/presentation/playlist_search_screen/playlist_search_screen.dart';
import 'package:spotify_clone/presentation/user_library_screen/user_library_screen.dart';
import 'package:spotify_clone/presentation/settings_screen/settings_screen.dart';
import 'package:spotify_clone/presentation/scanning_for_spotify_codes_screen/scanning_for_spotify_codes_screen.dart';
import 'package:spotify_clone/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startScreen = '/start_screen';

  static const String signupOneScreen = '/signup_one_screen';

  static const String signupTwoScreen = '/signup_two_screen';

  static const String signupThreeScreen = '/signup_three_screen';

  static const String signupFourScreen = '/signup_four_screen';

  static const String chooseArtistsScreen = '/choose_artists_screen';

  static const String chosePodcastsScreen = '/chose_podcasts_screen';

  static const String homeScreen = '/home_screen';

  static const String searchOneScreen = '/search_one_screen';

  static const String searchPage = '/search_page';

  static const String searchContainerScreen = '/search_container_screen';

  static const String albumViewScreen = '/album_view_screen';

  static const String albumControlScreen = '/album_control_screen';

  static const String trackViewScreen = '/track_view_screen';

  static const String trackScreen = '/track_screen';

  static const String songShareScreen = '/song_share_screen';

  static const String albumRadioScreen = '/album_radio_screen';

  static const String playlistSearchScreen = '/playlist_search_screen';

  static const String libraryPage = '/library_page';

  static const String userLibraryScreen = '/user_library_screen';

  static const String settingsScreen = '/settings_screen';

  static const String scanningForSpotifyCodesScreen =
      '/scanning_for_spotify_codes_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        startScreen: StartScreen.builder,
        signupOneScreen: SignupOneScreen.builder,
        signupTwoScreen: SignupTwoScreen.builder,
        signupThreeScreen: SignupThreeScreen.builder,
        signupFourScreen: SignupFourScreen.builder,
        chooseArtistsScreen: ChooseArtistsScreen.builder,
        chosePodcastsScreen: ChosePodcastsScreen.builder,
        homeScreen: HomeScreen.builder,
        searchOneScreen: SearchOneScreen.builder,
        searchContainerScreen: SearchContainerScreen.builder,
        albumViewScreen: AlbumViewScreen.builder,
        albumControlScreen: AlbumControlScreen.builder,
        trackViewScreen: TrackViewScreen.builder,
        trackScreen: TrackScreen.builder,
        songShareScreen: SongShareScreen.builder,
        albumRadioScreen: AlbumRadioScreen.builder,
        playlistSearchScreen: PlaylistSearchScreen.builder,
        userLibraryScreen: UserLibraryScreen.builder,
        settingsScreen: SettingsScreen.builder,
        scanningForSpotifyCodesScreen: ScanningForSpotifyCodesScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: StartScreen.builder
      };
}
