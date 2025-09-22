import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

BottomNavigationBarItem bottomNavigationBarItemWidget({
  required String imagePath,
  required String title,
}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(imagePath),
    activeIcon: SvgPicture.asset(
      imagePath,
      colorFilter: ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
    ),
    label: title,
  );
}
