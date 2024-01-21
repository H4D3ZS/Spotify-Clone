import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray90011,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.blueGray70001,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 19,
        space: 19,
        color: colorScheme.primary,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
          color: appTheme.gray300,
          fontSize: 13.fSize,
          fontFamily: 'Avenir Next',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray300,
          fontSize: 11.fSize,
          fontFamily: 'Avenir Next',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 26.fSize,
          fontFamily: 'Avenir Next',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 25.fSize,
          fontFamily: 'Avenir Next',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray40004,
          fontSize: 13.fSize,
          fontFamily: 'Avenir Next',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray40004,
          fontSize: 11.fSize,
          fontFamily: 'Avenir Next',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.black90001,
          fontSize: 8.fSize,
          fontFamily: 'Avenir Next',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 20.fSize,
          fontFamily: 'Avenir Next',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 16.fSize,
          fontFamily: 'Avenir Next',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 15.fSize,
          fontFamily: 'Avenir Next',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFFFFFFF),
    primaryContainer: Color(0XFF4A39EA),
    secondaryContainer: Color(0XFF101010),

    // Error colors
    errorContainer: Color(0XFFABBB6D),
    onErrorContainer: Color(0XFF1F1F21),

    // On colors(text colors)
    onPrimary: Color(0XFF223160),
    onPrimaryContainer: Color(0XFF030303),
    onSecondaryContainer: Color(0XFF678026),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF0D0C0A);
  Color get black90001 => Color(0XFF000000);

  // Blue
  Color get blue400 => Color(0XFF4C9EEA);
  Color get blueA400 => Color(0XFF1877F2);
  Color get blueA40001 => Color(0XFF3371E4);

  // BlueGray
  Color get blueGray700 => Color(0XFF5E3B7A);
  Color get blueGray70001 => Color(0XFF535353);
  Color get blueGray800 => Color(0XFF3A434F);
  Color get blueGray900 => Color(0XFF333333);

  // Cyan
  Color get cyan900 => Color(0XFF00667B);

  // DeepOrange
  Color get deepOrange700 => Color(0XFFD8672A);
  Color get deepOrange800 => Color(0XFFCF4321);

  // DeepPurple
  Color get deepPurple400 => Color(0XFF8768A7);

  // Gray
  Color get gray100 => Color(0XFFF5F5F5);
  Color get gray300 => Color(0XFFE5E5E5);
  Color get gray400 => Color(0XFFB2B2B2);
  Color get gray40001 => Color(0XFFC4C4C4);
  Color get gray40002 => Color(0XFFCBB7B5);
  Color get gray40003 => Color(0XFFBCB7B6);
  Color get gray40004 => Color(0XFFB3B3B3);
  Color get gray50 => Color(0XFFFBFBFB);
  Color get gray500 => Color(0XFF9C9C9C);
  Color get gray50001 => Color(0XFFABA4A3);
  Color get gray50002 => Color(0XFFA7A7A7);
  Color get gray600 => Color(0XFF7E6E5B);
  Color get gray60001 => Color(0XFF727272);
  Color get gray60002 => Color(0XFF7D6D5B);
  Color get gray60003 => Color(0XFF6C6C6C);
  Color get gray60004 => Color(0XFF7F7F7F);
  Color get gray60005 => Color(0XFF836E55);
  Color get gray60006 => Color(0XFF777777);
  Color get gray800 => Color(0XFF47464B);
  Color get gray80001 => Color(0XFF641D17);
  Color get gray80002 => Color(0XFF6B3311);
  Color get gray80003 => Color(0XFF4C4134);
  Color get gray80004 => Color(0XFF3E3F3F);
  Color get gray900 => Color(0XFF271513);
  Color get gray90001 => Color(0XFF15120E);
  Color get gray90002 => Color(0XFF191919);
  Color get gray90003 => Color(0XFF0F1929);
  Color get gray90004 => Color(0XFF111111);
  Color get gray90005 => Color(0XFF131313);
  Color get gray90006 => Color(0XFF191414);
  Color get gray90007 => Color(0XFF1F1919);
  Color get gray90008 => Color(0XFF661710);
  Color get gray90009 => Color(0XFF2A2A2A);
  Color get gray90010 => Color(0XFF282828);
  Color get gray90011 => Color(0XFF121212);
  Color get gray90012 => Color(0XFF1A1717);
  Color get gray90013 => Color(0XFF430E09);

  // Graye
  Color get gray9008e => Color(0X8E550A1B);

  // Green
  Color get green400 => Color(0XFF74A768);
  Color get green40001 => Color(0XFF65D46E);
  Color get green40002 => Color(0XFF65D072);
  Color get green40003 => Color(0XFF57B65F);
  Color get green500 => Color(0XFF58BB49);
  Color get greenA700 => Color(0XFF17B54E);
  Color get greenA70001 => Color(0XFF1ABA54);
  Color get greenA70002 => Color(0XFF1ED760);
  Color get greenA70003 => Color(0XFF1DB954);

  // Indigo
  Color get indigo300 => Color(0XFF868AE1);

  // PinkAd
  Color get pink900Ad => Color(0XAD702E3C);

  // Purple
  Color get purple400 => Color(0XFF9853B2);

  // Red
  Color get red800 => Color(0XFFC63224);
  Color get red900 => Color(0XFFA62B20);
  Color get red90001 => Color(0XFF962419);

  // Teal
  Color get teal100 => Color(0XFFB9D4DB);
  Color get teal900 => Color(0XFF002E38);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();