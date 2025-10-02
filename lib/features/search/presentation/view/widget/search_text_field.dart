import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomSearchTextfield extends StatelessWidget {
  const CustomSearchTextfield({super.key, this.onChanged, this.hintText});
  final void Function(String)? onChanged;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        fillColor: AppColors.searchBackgroundColor,
        filled: true,
        prefixIcon: SizedBox(
          width: 20,
          child: Center(child: SvgPicture.asset(AppIcons.iconsMagniferIcon)),
        ),
        hintStyle: AppStyles.textRegular14(
          context: context,
        ).copyWith(color: AppColors.searchTextColor),
        hintText: hintText ?? 'Search for specialty, doctor',
        contentPadding: const EdgeInsets.only(left: 12, right: 16),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColors.searchBackgroundColor),
    );
  }
}
