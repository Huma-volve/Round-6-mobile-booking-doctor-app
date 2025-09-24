import 'package:flutter/widgets.dart';

class AppStyles {
  static TextStyle textRegular24({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Georgia',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textRegular14({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textRegular16({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textRegular12({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textRegular20({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Georgia',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textMedium14({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle textMedium16({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
    );
  }

  static double getResponsiveFontSize(
    BuildContext context, {
    required double fontSize,
  }) {
    final double scaleFactor = getScaleFactor(context);
    final double responsiveSize = scaleFactor * fontSize;
    final double lowerFont = fontSize * .8;
    final double upperFont = fontSize * 1;
    return responsiveSize.clamp(lowerFont, upperFont);
  }

  static double getScaleFactor(context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width < 1300) {
      return width / 1100;
    } else {
      return width / 1500;
    }
  }
}
