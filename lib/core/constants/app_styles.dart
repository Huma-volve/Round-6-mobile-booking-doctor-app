import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:flutter/widgets.dart';

class AppStyles {
  static double getResponsiveFontSize(
    BuildContext context, {
    required double fontSize,
  }) {
    double scaleFactor = getScaleFactor(context);
    double responsiveSize = scaleFactor * fontSize;
    double lowerFont = fontSize * .8;
    double upperFont = fontSize * 1;
    return responsiveSize.clamp(lowerFont, upperFont);
  }

  static double getScaleFactor(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    if (width < 1300) {
      return width / 1100;
    } else {
      return width / 1500;
    }
  }

  static TextStyle textRegular17({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 17),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      height: 1.36,
    );
  }

  static TextStyle textGeorgia({required BuildContext context}) {
    return TextStyle(
      fontFamily: 'Georgia',
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      height: 1.0,
      letterSpacing: 0,
    );
  }

  static TextStyle textRegular15({required BuildContext context}) {
    return TextStyle(
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
      fontSize: 17,
      height: 1.0,
      letterSpacing: 0,
    );
  }
}
