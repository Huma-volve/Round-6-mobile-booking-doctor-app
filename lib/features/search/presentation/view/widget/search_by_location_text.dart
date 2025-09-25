import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class SearchByLocationText extends StatelessWidget {
  const SearchByLocationText({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Search by your location',
              style: AppStyles.textRegular16(
                context: context,
              ).copyWith(color: AppColors.blackColor05),
            ),
            TextSpan(
              text: ' 129,El-Nasr Street, Cairo',

              style: AppStyles.textRegular12(
                context: context,
              ).copyWith(color: AppColors.blueColor14),
            ),
          ],
        ),
      ),
    );
  }
}
