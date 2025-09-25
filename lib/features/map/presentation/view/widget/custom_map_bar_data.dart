import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CustomMapBarData extends StatelessWidget {
  const CustomMapBarData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Current location',
          textAlign: TextAlign.center,
          style: AppStyles.textRegular16(
            context: context,
          ).copyWith(color: AppColors.blackColor05),
        ),
        const SizedBox(height: 6),
        Text(
          '129,El-Nasr Street, Cairo ',
          style: AppStyles.textRegular14(
            context: context,
          ).copyWith(color: AppColors.blueColor14),
        ),
      ],
    );
  }
}
