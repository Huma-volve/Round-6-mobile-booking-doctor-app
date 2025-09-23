import 'package:flutter/widgets.dart';

class AppStyles {
  static TextStyle font24Regular(BuildContext context) {
    double size = AppStyles().getResponsiveFontSize(context, fontSize: 24);
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w400,
      fontFamily: 'Georgia',
    );
  }

  static TextStyle font20SemiBold(BuildContext context) {
    double size = AppStyles().getResponsiveFontSize(context, fontSize: 20);
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w600,
      fontFamily: 'Georgia',
    );
  }

  static TextStyle font16Meduim(BuildContext context) {
    double size = AppStyles().getResponsiveFontSize(context, fontSize: 16);
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w500,
      fontFamily: 'Georgia',
    );
  }

  double getResponsiveFontSize(
    BuildContext context, {
    required double fontSize,
  }) {
    double scaleFactor = getScaleFactor(context);
    double responsiveSize = scaleFactor * fontSize;
    double lowerFont = fontSize * .8;
    double upperFont = fontSize * 1;
    return responsiveSize.clamp(lowerFont, upperFont);
  }

  double getScaleFactor(context) {
    var width = MediaQuery.sizeOf(context).width;
    if (width < 1300) {
      return width / 1100;
    } else {
      return width / 1500;
    }
  }
}
