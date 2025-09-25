import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/core/widgets/custom_container_design.dart';
import 'package:flutter/material.dart';

class CustomActiveAll extends StatelessWidget {
  const CustomActiveAll({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerDesign(
      color: AppColors.blueColor14,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'All',
            style: AppStyles.textRegular16(
              context: context,
            ).copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
