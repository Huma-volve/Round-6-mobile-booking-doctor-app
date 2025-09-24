import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomEditProfileField extends StatelessWidget {
  final String title;
  final String icon;
   final TextInputType textInputType;
  const CustomEditProfileField({
    super.key,
    required this.title,
    required this.icon,  this.textInputType=TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.profilColor,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        hintStyle: AppStyles.montserrat400Regular(
          context: context,
          font: 16.0,
          fontWeight: FontWeight.w500,
          color: AppColors.editProfileColor,
        ),
        hint: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(icon, height: 20, width: 20),
            SizedBox(width: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}
