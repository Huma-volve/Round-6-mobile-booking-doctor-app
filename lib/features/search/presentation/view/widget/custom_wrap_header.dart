import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CustomWrapHeader extends StatelessWidget {
  const CustomWrapHeader({required this.header, super.key});
  final String header;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        header,
        style: AppStyles.textRegular20(
          context: context,
        ).copyWith(color: AppColors.blackColor00),
      ),
    );
  }
}
