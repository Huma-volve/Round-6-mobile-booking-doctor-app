import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContainerDesign extends StatelessWidget {
  const CustomContainerDesign({required this.child, super.key, this.color});
  final Widget child;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.80,
      child: Container(
        decoration: ShapeDecoration(
          color: color ?? AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: AppColors.greyColor99),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: child,
      ),
    );
  }
}
