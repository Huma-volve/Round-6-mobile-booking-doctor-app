import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar customAppBar(BuildContext context, {final String? title}) {
  return AppBar(
    backgroundColor: AppColors.whiteColor,
    elevation: 0,
    scrolledUnderElevation: 0,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: SvgPicture.asset(AppIcons.backArrow),
    ),
    title: Text(
      title ?? 'Notifications',
      style: AppStyles.fontGeorgiaRegularSecondaryColor(context, size: 24),
    ),
    centerTitle: true,
  );
}
