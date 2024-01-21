import 'package:flutter/material.dart';
import 'package:spotify_clone/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.circular(16.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green40003,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(23.h),
      );
  static BoxDecoration get fillGreenTL23 => BoxDecoration(
        color: appTheme.green40002,
        borderRadius: BorderRadius.circular(23.h),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue400,
        borderRadius: BorderRadius.circular(23.h),
      );
  static BoxDecoration get fillGreenTL231 => BoxDecoration(
        color: appTheme.green500,
        borderRadius: BorderRadius.circular(23.h),
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillPrimaryTL29 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(29.h),
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA70002,
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get gradientPrimaryContainerToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            theme.colorScheme.primaryContainer,
            appTheme.teal100,
          ],
        ),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray700,
        borderRadius: BorderRadius.circular(5.h),
      );
}
