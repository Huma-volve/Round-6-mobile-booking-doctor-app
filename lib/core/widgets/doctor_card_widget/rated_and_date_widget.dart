import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RatedAndDateWidget extends StatelessWidget {
  const RatedAndDateWidget({
    required this.size,
    required this.rate,
    required this.date,
    super.key,
  });

  final Size size;
  final String rate;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            SizedBox(
              width: size.width * .06,
              height: size.height * .03,
              child: SvgPicture.asset(AppIcons.iconsRateIcon, fit: BoxFit.fill),
            ),
            SizedBox(width: size.width * .02),
            Text(
              rate,
              style: AppStyles.fontMontserratRegularGreyColor(
                context,
                size: 14,
              ).copyWith(color: AppColors.secondaryColor),
            ),
          ],
        ),
        SizedBox(width: size.width * .03),
        Row(
          children: [
            SizedBox(
              width: size.width * .06,
              height: size.height * .03,
              child: SvgPicture.asset(AppIcons.iconsTimeIcon, fit: BoxFit.fill),
            ),
            SizedBox(width: size.width * .02),
            Row(
              children: [
                Text(
                  date,
                  style: AppStyles.fontMontserratRegularGreyColor(
                    context,
                    size: 14,
                  ).copyWith(color: AppColors.secondaryColor),
                ),
                // Text(
                //   " 8:00pm",
                //   style: AppStyles.fontMontserratRegularGreyColor(
                //     context,
                //     size: 14,
                //   ).copyWith(color: AppColors.secondaryColor),
                // ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
