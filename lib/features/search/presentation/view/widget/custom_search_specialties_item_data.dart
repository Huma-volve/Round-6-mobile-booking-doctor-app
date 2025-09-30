import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomSearchSpecialtiesItemData extends StatelessWidget {
  const CustomSearchSpecialtiesItemData({
    required this.title,
    required this.image,
    super.key,
  });
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 12, right: 16, bottom: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 22, height: 22, child: SvgPicture.asset(image)),
            const SizedBox(width: 8),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                style: AppStyles.textRegular16(
                  context: context,
                ).copyWith(color: AppColors.greyColor40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
