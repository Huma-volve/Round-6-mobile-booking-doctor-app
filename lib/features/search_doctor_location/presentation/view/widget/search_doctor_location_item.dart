import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomSearchDoctorLocationItem extends StatelessWidget {
  const CustomSearchDoctorLocationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .11,
      padding: const EdgeInsets.only(right: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFFBBC1C7)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .11,
            width: MediaQuery.sizeOf(context).width * .23,
            child: Image.asset(AppImages.Test1, fit: BoxFit.cover),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Robert Johnson',
                        style: AppStyles.textRegular16(context: context)
                            .copyWith(
                              color: AppColors.blackColor00,
                              fontFamily: 'Georgia',
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Orthopedic | El-Nasr Hospital',
                            style: AppStyles.textRegular14(
                              context: context,
                            ).copyWith(color: AppColors.searchTextColor),
                          ),
                        ),
                        SvgPicture.asset(AppIcons.iconsRedHeartIcon),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Row(
                      children: [
                        SvgPicture.asset(AppIcons.iconsStar),
                        const SizedBox(width: 4),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            '4.8',
                            style: AppStyles.textMedium14(
                              context: context,
                            ).copyWith(color: AppColors.blackColor05),
                          ),
                        ),
                        const SizedBox(width: 16),
                        SvgPicture.asset(AppIcons.iconsClockCircle),
                        const SizedBox(width: 8),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            '9:30am - 8:00pm',
                            style: AppStyles.textMedium14(
                              context: context,
                            ).copyWith(color: AppColors.blackColor05),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
