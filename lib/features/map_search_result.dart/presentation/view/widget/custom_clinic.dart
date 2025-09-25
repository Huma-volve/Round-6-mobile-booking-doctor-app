import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomClinic extends StatelessWidget {
  const CustomClinic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * .6,
          child: Image.asset(AppImages.Test3, fit: BoxFit.fill),
        ),
        Container(
          width: MediaQuery.sizeOf(context).width * .6,
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 12),
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Sunrise healthy Center',
                  textAlign: TextAlign.center,
                  style: AppStyles.textRegular16(
                    context: context,
                  ).copyWith(color: AppColors.blackColor00),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.iconsLocationIcon,
                        height: 18,
                        width: 18,
                        colorFilter: const ColorFilter.mode(
                          AppColors.searchTextColor,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 4),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '129,El-Nasr Street, Cairo',
                          style: AppStyles.textRegular12(
                            context: context,
                          ).copyWith(color: AppColors.searchTextColor),
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(AppIcons.iconsOriginalHeartIcon),
                ],
              ),

              const SizedBox(height: 16),
              FittedBox(
                fit: BoxFit.scaleDown,
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
      ],
    );
  }
}
