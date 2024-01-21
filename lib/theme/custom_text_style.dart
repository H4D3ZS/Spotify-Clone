import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallGray40003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40003,
      );
  static get bodySmallGray40004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40004,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 10.fSize,
      );
  static get bodySmallGreenA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA700,
        fontSize: 10.fSize,
      );
  static get bodySmallGreenA70002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA70002,
        fontSize: 10.fSize,
      );
  static get bodySmallGreenA70003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA70003,
        fontSize: 10.fSize,
      );
  static get bodySmallGreenA70010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA700,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallRobotoGray90007 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray90007,
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoGray9000712 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray90007,
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoGray90007_1 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray90007,
      );
  // Circular text style
  static get circularStdGray400 => TextStyle(
        color: appTheme.gray400,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w400,
      ).circularStd;
  // Headline text style
  static get headlineMediumBold => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumBold28 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 28.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmall24 => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 24.fSize,
      );
  static get headlineSmall24_1 => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 24.fSize,
      );
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmall_1 => theme.textTheme.headlineSmall!;
  // Label text style
  static get labelLarge12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLarge12_1 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLargeGreenA70002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA70002,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get labelLargePrimaryBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimarySemiBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimarySemiBold12 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimarySemiBold_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimarySemiBold_2 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMedium10 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 10.fSize,
      );
  static get labelMediumGray400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray400,
        fontSize: 10.fSize,
      );
  static get labelMediumGreenA70002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.greenA70002,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPrimarySemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediuma3b3b3b3 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XA3B3B3B3),
      );
  static get labelMediumffb3b3b3 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFFB3B3B3),
      );
  static get labelSmallBold => theme.textTheme.labelSmall!.copyWith(
        fontSize: 9.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallPrimary => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSemiBold_1 => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeffad8c8a => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFAD8C8A),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeffffffff => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack90001Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold18_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold19 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray100Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray100,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray40004 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray40004,
      );
  static get titleMediumGray90005 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90005,
      );
  static get titleMediumGreenA70002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA70002,
        fontSize: 17.fSize,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold17_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold18_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold19 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack9000114 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBold14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray40004 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40004,
        fontSize: 14.fSize,
      );
  static get titleSmallGreenA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA700,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get circularStd {
    return copyWith(
      fontFamily: 'Circular Std',
    );
  }

  TextStyle get avenirNext {
    return copyWith(
      fontFamily: 'Avenir Next',
    );
  }
}
