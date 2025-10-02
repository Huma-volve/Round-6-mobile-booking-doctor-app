import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    required this.onTap,
    super.key,
    this.margin,
    this.color,
    this.borderColor,
    this.textColor,
    this.width,
    this.padding,
  });

  final String text;
  final Function() onTap;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final Color? borderColor;
  final Color? textColor;
  final double? width;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding,
        width: width,
        margin: margin,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: borderColor ?? color ?? const Color(0xff000000),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppStyles.font16Meduim(
            context,
          ).copyWith(color: textColor ?? AppColors.whiteColor, fontSize: 16),
        ),
      ),
    );
  }
}
