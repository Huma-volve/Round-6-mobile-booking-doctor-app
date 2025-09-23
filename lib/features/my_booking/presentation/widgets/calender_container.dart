import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CalenderContainer extends StatelessWidget {
  const CalenderContainer({
    super.key,
    required this.isSelected,
    required this.day,
  });

  final bool isSelected;
  final DateTime day;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.buttonBackgroundColor
            : AppColors.ligthGrey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"][day.weekday % 7],
            style: AppStyles.font16Meduim(context).copyWith(
              fontSize: 14,
              color: isSelected
                  ? AppColors.whiteColor
                  : AppColors.darkGreyColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "${day.day}",
            style: AppStyles.font16Meduim(context).copyWith(
              fontSize: 14,
              color: isSelected
                  ? AppColors.whiteColor
                  : AppColors.darkGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
