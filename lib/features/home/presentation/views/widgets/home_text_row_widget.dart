import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_strings.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/widgets.dart';

class HomeTextRowWidget extends StatelessWidget {
  const HomeTextRowWidget({super.key, this.leftText});
  final String? leftText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText ?? AppStrings.specialties,
          style: AppStyles.fontGeorgiaRegularSecondaryColor(
            context,
            size: 20,
          ).copyWith(color: AppColors.blackColor),
        ),

        Text(
          AppStrings.viewAll,
          style: AppStyles.fontMontserratRegularGreyColor(
            context,
            size: 14,
          ).copyWith(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
