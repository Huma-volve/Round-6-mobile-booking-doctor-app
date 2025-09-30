import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppStyles {

  static TextStyle appBarTitleStyle = TextStyle(
    color: AppColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontFamily: AppFonts.georgia,
    height: 35,

  );
  static TextStyle nameStyle = TextStyle(
      color: AppColors.black,
      fontSize: 18,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.georgia
  );
  static TextStyle reviewsNameStyle = TextStyle(
      color: AppColors.black,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.georgia
  );
  static TextStyle rateStyle = TextStyle(
      color: AppColors.black,
      fontSize: 49,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.georgia
  );
  static TextStyle bioStyle = TextStyle(
      color: AppColors.bioColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.montserrat
  );
  static TextStyle detailsStyle = TextStyle(
      color: AppColors.black,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.montserrat
  );
  static TextStyle textUnderReviewStyle = TextStyle(
      color: AppColors.bioColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.montserrat
  );
  static TextStyle montMedium = TextStyle(
      color: AppColors.bioColor,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      fontFamily: AppFonts.montserrat
  );
  static TextStyle addReviewStyle = TextStyle(
      color: AppColors.blueAddReview,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.montserrat
  );
  static TextStyle time1Style = TextStyle(
      color: AppColors.bioColor,
      fontSize: 13,
      fontWeight: FontWeight.w600,
      fontFamily: AppFonts.montserrat
  );
  static TextStyle containerRateStyle = TextStyle(
      color: AppColors.yellow,
      fontSize: 12,
      fontWeight: FontWeight.w700,
      fontFamily: AppFonts.montserrat
  );
  static TextStyle bottomPriceStyle = TextStyle(
      color: AppColors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      fontFamily: AppFonts.montserrat
  );

  static TextStyle fontGeorgiaRegularSecondaryColor(BuildContext context, {
    required double size,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.secondaryColor,
      fontSize: AppStyles.getResponsiveFontSize(context, fontSize: size),
      fontFamily: AppFonts.georgia,
    );
  }

  static TextStyle fontMontserratRegularGreyColor(BuildContext context, {
    required double size,
  }) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColors.greySemiDarkColor,
      fontSize: AppStyles.getResponsiveFontSize(context, fontSize: size),
      fontFamily: AppFonts.montserrat,
    );
  }

  static TextStyle font24Regular(BuildContext context) {
    final double size = AppStyles.getResponsiveFontSize(context, fontSize: 24);
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w400,
      fontFamily: 'Georgia',
    );
  }

  static TextStyle font20SemiBold(BuildContext context) {
    final double size = AppStyles.getResponsiveFontSize(context, fontSize: 20);
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w600,
      fontFamily: 'Georgia',
    );
  }

  static TextStyle georgia400Regular({
    required BuildContext context,
    font = 20.0,
  }) {
    return TextStyle(
      fontSize: AppStyles.getResponsiveFontSize(context, fontSize: font),
      fontFamily: 'Georgia',
      fontWeight: FontWeight.w400,
      color: AppColors.userColor,
    );
  }

  static TextStyle montserrat400Thin({required BuildContext context}) {
    return TextStyle(
      fontSize: AppStyles.getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat-Thin',
      fontWeight: FontWeight.w400,
      color: AppColors.addressColor,
    );
  }

  static TextStyle font16Meduim(BuildContext context) {
    final double size = AppStyles.getResponsiveFontSize(context, fontSize: 16);
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w500,
      fontFamily: 'Georgia',
    );
  }

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

  static TextStyle montserrat400Regular({
    required BuildContext context,
    color = AppColors.userColor,
    font = 20.0,
    fontWeight = FontWeight.w400,
  }) {
    return TextStyle(
      fontSize: AppStyles.getResponsiveFontSize(context, fontSize: font),
      fontFamily: 'Montserrat-Regular',
      fontWeight: fontWeight,
      color: color,
    );
  }


  static double getResponsiveFontSize(BuildContext context, {
    required double fontSize,
  }) {
    final double scaleFactor = getScaleFactor(context);
    final double responsiveSize = scaleFactor * fontSize;
    final double lowerFont = fontSize * .8;
    final double upperFont = fontSize * 1;
    return responsiveSize.clamp(lowerFont, upperFont);
  }

  static double getScaleFactor(context) {
    final width = MediaQuery
        .sizeOf(context)
        .width;
    if (width < 1300) {
      return width / 1100;
    } else {
      return width / 1500;
    }
  }
}