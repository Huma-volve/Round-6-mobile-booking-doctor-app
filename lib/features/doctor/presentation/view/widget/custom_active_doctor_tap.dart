import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/core/widgets/custom_container_design.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomActiveDoctorTap extends StatelessWidget {
  const CustomActiveDoctorTap({
    required this.image,
    required this.title,
    super.key,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return CustomContainerDesign(
      color: AppColors.blueColor14,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 12, right: 16, bottom: 8),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 24,
                height: 24,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: SvgPicture.asset(
                  image,
                  colorFilter: const ColorFilter.mode(
                    AppColors.whiteColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  style: AppStyles.textRegular16(
                    context: context,
                  ).copyWith(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
