import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_fonts.dart';
import 'package:flutter/widgets.dart';

class AppStyles{

  static TextStyle appBarTitleStyle=TextStyle(
    color: AppColors.black,
    fontSize:20,
    fontWeight: FontWeight.w400,
    fontFamily: AppFonts.georgia,
    height: 35,

  );
  static TextStyle nameStyle=TextStyle(
      color: AppColors.black,
      fontSize:18,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.georgia
  );
  static TextStyle reviewsNameStyle=TextStyle(
      color: AppColors.black,
      fontSize:14,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.georgia
  );
  static TextStyle rateStyle=TextStyle(
      color: AppColors.black,
      fontSize:49,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.georgia
  );
  static TextStyle bioStyle=TextStyle(
      color: AppColors.bioColor,
      fontSize:12,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.montserrat
  );
  static TextStyle detailsStyle=TextStyle(
      color: AppColors.black,
      fontSize:12,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.montserrat
  );
  static TextStyle textUnderReviewStyle=TextStyle(
      color: AppColors.bioColor,
      fontSize:12,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.montserrat
  );
  static TextStyle montMedium=TextStyle(
      color: AppColors.bioColor,
      fontSize:14,
      fontWeight: FontWeight.w700,
      fontFamily: AppFonts.montserrat
  );
  static TextStyle addReviewStyle=TextStyle(
      color: AppColors.blueAddReview,
      fontSize:12,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.montserrat
  );
  static TextStyle time1Style=TextStyle(
      color: AppColors.bioColor,
      fontSize:13,
      fontWeight: FontWeight.w600,
      fontFamily: AppFonts.montserrat
  );
  static TextStyle containerRateStyle=TextStyle(
      color: AppColors.yellow,
      fontSize:12,
      fontWeight: FontWeight.w700,
      fontFamily: AppFonts.montserrat
  );
  static TextStyle bottomPriceStyle=TextStyle(
      color: AppColors.black,
      fontSize:20,
      fontWeight: FontWeight.w500,
      fontFamily: AppFonts.montserrat
  );







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
    }
    else {
      return width / 1500;
    }
  }

}
