import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItemWidget extends StatelessWidget {
  CategoryItemWidget({super.key, this.onTap, this.isSelected = false});
  final void Function()? onTap;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.greySemiDarkColor),
          borderRadius: BorderRadius.circular(15),
          color: isSelected ? AppColors.primaryColor : null,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              AppIcons.iconsDentistIcon,
              color: isSelected ? Colors.white : null,
            ),
            SizedBox(width: MediaQuery.sizeOf(context).width * .03),
            Text(
              AppStrings.dentist,
              style: TextStyle(color: isSelected ? Colors.white : null),
            ),
          ],
        ),
      ),
    );
  }
}
