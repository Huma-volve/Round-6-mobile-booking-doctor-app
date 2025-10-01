import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomSpecialtiesItemData extends StatelessWidget {
  const CustomSpecialtiesItemData({
    required this.image,
    required this.title,
    super.key,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 24,
          height: 24,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: SvgPicture.asset(image),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: AppStyles.textRegular16(
            context: context,
          ).copyWith(color: AppColors.blackColor05),
        ),
      ],
    );
  }
}
