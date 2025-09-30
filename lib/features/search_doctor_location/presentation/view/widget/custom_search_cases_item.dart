import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomSearchCasesItem extends StatelessWidget {
  const CustomSearchCasesItem({
    required this.title,
    required this.image,
    super.key,
    this.onTap,
  });
  final String title;
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 32,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xFFBBC1C7)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 24, width: 24, child: SvgPicture.asset(image)),
              const SizedBox(width: 8),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  style: AppStyles.textRegular14(
                    context: context,
                  ).copyWith(color: AppColors.searchTextColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
