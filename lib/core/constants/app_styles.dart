import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:flutter/widgets.dart';

class AppStyles {
  static TextStyle georgia400Regular({required BuildContext context,font=20.0}) {
    
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: font),
      fontFamily: 'Georgia',
      fontWeight: FontWeight.w400,
      color: AppColors.userColor,
    );
  }

  static TextStyle montserrat400Thin({required BuildContext context}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat-Thin',
      fontWeight: FontWeight.w400,
      color: AppColors.addressColor,
    );
  }
   static TextStyle montserrat400Regular({required BuildContext context, color = AppColors.userColor,font=20.0,fontWeight=FontWeight.w400}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: font),
      fontFamily: 'Montserrat-Regular',
      fontWeight:fontWeight ,
      color: color,
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
