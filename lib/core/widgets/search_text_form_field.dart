import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_strings.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/core/widgets/custom_text_form_field.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFeild(
      prefixIcon: Padding(
        padding: const EdgeInsets.only(right: 8, left: 12, top: 14, bottom: 14),
        child: SvgPicture.asset(AppIcons.iconsSearchIcon),
      ),
      hint: AppStrings.searchForSpecialtyDoctor,
      hintStyle: AppStyles.fontMontserratRegularGreyColor(context, size: 14),
      filled: true,
      fillColor: const Color(0xffF5F6F7),
      enabledBorderColor: AppColors.whiteColor,
      focusedBorderColor: AppColors.primaryColor,
    );
  }
}
