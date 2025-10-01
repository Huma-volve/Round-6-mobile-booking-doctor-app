import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/core/widgets/doctor_card_widget/rated_and_date_widget.dart';
import 'package:flutter/material.dart';

class NameLocationRatesDatesColumn extends StatelessWidget {
  const NameLocationRatesDatesColumn({
    super.key,
    required this.size,
    required this.title,
    required this.location,
    required this.rate,
    required this.date,
  });

  final Size size;
  final String title;
  final String location;
  final String rate;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppStyles.fontGeorgiaRegularSecondaryColor(
            context,
            size: 16,
          ).copyWith(color: AppColors.blackColor),
        ),
        SizedBox(height: size.height * .004),
        Text(
          location,
          style: AppStyles.fontMontserratRegularGreyColor(context, size: 14),
        ),
        SizedBox(height: size.height * .004),
        RatedAndDateWidget(size: size, rate: rate, date: date),
      ],
    );
  }
}
