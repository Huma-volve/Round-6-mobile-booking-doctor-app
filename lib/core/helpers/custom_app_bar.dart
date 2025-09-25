import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

AppBar customAppBar(BuildContext context, {required String title}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    scrolledUnderElevation: 0,
    elevation: 0,
    leading: InkWell(
      onTap: () => Navigator.pop(context),
      child: Center(child: SvgPicture.asset(AppIcons.iconsArrowBackIcon)),
    ),
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: AppStyles.textRegular24(
        context: context,
      ).copyWith(color: AppColors.blackColor00),
    ),
  );
}
