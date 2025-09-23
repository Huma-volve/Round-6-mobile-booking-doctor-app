import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/review/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorBookingContainerWidget extends StatelessWidget {
  const DoctorBookingContainerWidget({
    super.key,
    required this.date,
    required this.states,
    required this.doctorName,
    required this.doctorSpecialty,
    required this.location,
    required this.button1Text,
    required this.button2Text,
    required this.image,
    this.textColor,
    required this.onTap,
  });
  final String date;
  final String states;
  final String doctorName;
  final String doctorSpecialty;
  final String location;
  final String button1Text;
  final String button2Text;
  final String image;
  final Color? textColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 197, 199, 202),
            blurRadius: 0.001,
            spreadRadius: 0.001,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        spacing: 10,
        children: [
          Row(
            spacing: 8,
            children: [
              SvgPicture.asset(AppIcons.calenderIcon),
              Text(
                date,
                style: AppStyles.font24Regular(
                  context,
                ).copyWith(color: AppColors.secondaryTextColor, fontSize: 12),
              ),
              Spacer(),
              Text(
                states,
                style: AppStyles.font24Regular(context).copyWith(
                  color: states == 'Compeleted'
                      ? AppColors.greenColor
                      : states == 'Canceled'
                      ? AppColors.redColor
                      : AppColors.buttonBackgroundColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Divider(
            color: AppColors.ligthGrey,
            thickness: 1,
            indent: 16,
            endIndent: 16,
          ),
          Row(
            spacing: 12,
            children: [
              Image.asset(image),
              RichText(
                text: TextSpan(
                  text: doctorName,
                  style: AppStyles.font24Regular(
                    context,
                  ).copyWith(fontSize: 16, color: AppColors.black84BColor),
                  children: [
                    TextSpan(
                      text: '\n$doctorSpecialty',
                      style: AppStyles.font24Regular(
                        context,
                      ).copyWith(fontSize: 14, color: AppColors.darkGreyColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            spacing: 5,
            children: [
              SvgPicture.asset(AppIcons.locationIcon),
              Text(
                location,
                style: AppStyles.font24Regular(
                  context,
                ).copyWith(fontSize: 14, color: AppColors.darkGreyColor),
              ),
            ],
          ),
          Row(
            spacing: 30,
            children: [
              Expanded(
                child: CustomButton(
                  padding: EdgeInsets.all(10),
                  text: button1Text,
                  onTap: onTap,
                  color: AppColors.whiteColor,
                  textColor: textColor ?? AppColors.buttonBackgroundColor,
                  borderColor: textColor ?? AppColors.buttonBackgroundColor,
                ),
              ),
              Expanded(
                child: CustomButton(
                  padding: EdgeInsets.all(10),
                  text: button2Text,
                  onTap: () {},
                  color: AppColors.buttonBackgroundColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
