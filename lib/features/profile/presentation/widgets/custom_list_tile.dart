import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget? leading;
  final String title;
  final Widget? trailing;
  final TextStyle? titleStyle;
  final Color backgroundColor;
  final Color? titleColor;
  final double? fontSize;

  CustomListTile({
    super.key,
    required this.leading,
    required this.title,
    this.trailing,
    this.backgroundColor = AppColors.profilColor,
    this.titleStyle,
    this.titleColor = AppColors.userColor, 
    this.fontSize=20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: leading,
        title: Text(
          title,
          style: AppStyles.montserrat400Regular(
            context: context,
            color: titleColor,
            font: fontSize
          ),
        ),
        trailing: trailing,
      ),
    );
  }
}
