import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DashedButton extends StatelessWidget {
  const DashedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RectDottedBorderOptions(
        dashPattern: [10, 5],
        strokeWidth: 1,
        color: AppColors.primaryColor,
        // padding: EdgeInsets.symmetric(vertical: 8),
      ),
      child: Container(
        height: 37,
        width: double.infinity,
        child: Center(
          child: Text(
            'Add new address',
            style: AppStyles.fontMontserratRegularGreyColor(
              context,
              size: 14,
            ).copyWith(color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
