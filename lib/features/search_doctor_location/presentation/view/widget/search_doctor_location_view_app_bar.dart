import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/map/presentation/view/map_view.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SearchDoctorLocationViewAppBar extends StatelessWidget {
  const SearchDoctorLocationViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
            shadows: const [
              BoxShadow(color: Color(0x3F000000), blurRadius: 12),
            ],
          ),
          child: Center(child: SvgPicture.asset(AppIcons.iconsArrowBackIcon)),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,

          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset(AppIcons.areaIcon),
                ),
                const SizedBox(width: 5),
                Text(
                  'Your location',
                  style: AppStyles.textRegular14(context: context).copyWith(
                    color: AppColors.blueColor149,
                    fontFamily: 'Georgia',
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MapsView.routeName);
              },
              child: Text(
                '129,El-Nasr Street',
                style: AppStyles.textMedium14(
                  context: context,
                ).copyWith(color: AppColors.greyColor40),
              ),
            ),
          ],
        ),
        Image.asset(AppImages.test4, fit: BoxFit.cover),
      ],
    );
  }
}
