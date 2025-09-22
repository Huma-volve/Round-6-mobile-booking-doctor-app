import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CutomButton extends StatelessWidget {
  const CutomButton({
    required this.text,
    required this.onTap,
    super.key,
    this.margin,
    this.color,
  });

  final String text;
  final Function() onTap;
  final EdgeInsetsGeometry? margin;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        width: double.infinity,
        margin: margin,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppStyles.font16Meduim(
            context,
          ).copyWith(color: AppColors.whiteColor, fontSize: 16),
        ),
      ),
    );
  }
}
