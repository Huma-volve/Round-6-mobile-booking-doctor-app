import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/core/widgets/custom_container_design.dart';
import 'package:flutter/material.dart';

class CustomHistoryItem extends StatelessWidget {
  const CustomHistoryItem({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return CustomContainerDesign(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: AppStyles.textRegular16(
              context: context,
            ).copyWith(color: AppColors.greyColor40),
          ),
        ),
      ),
    );
  }
}
