import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_fonts.dart';
import 'package:flutter/widgets.dart';

class AppStyles {
  static TextStyle fontGeorgiaRegularSecondaryColor(
    BuildContext context, {
    required double size,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.secondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: size),
      fontFamily: AppFonts.georgia,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
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
