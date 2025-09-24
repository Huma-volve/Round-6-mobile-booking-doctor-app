import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomPasswordFormField extends StatefulWidget {
  final String hint;

  const CustomPasswordFormField({super.key, this.hint='********'});

  @override
  State<CustomPasswordFormField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomPasswordFormField> {
  bool _obscureCurrent = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureCurrent,
      decoration: InputDecoration(
        hintText:widget.hint,
        hintStyle: AppStyles.montserrat400Regular(
          context: context,
          font: 16.0,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        fillColor: AppColors.profilColor,
        suffixIcon: IconButton(
          icon: _obscureCurrent
              ? SvgPicture.asset(AppIcons.passwordInputIcon)
              : SvgPicture.asset(AppIcons.passwordEyeIcon),
          onPressed: () {
            setState(() {
              _obscureCurrent = !_obscureCurrent;
            });
          },
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
      ),
    );
  }
}
