import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_strings.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/core/helpers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationRow extends StatelessWidget {
  const LocationRow({super.key, this.colorText, this.fontSize});
  final Color? colorText;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppIcons.iconsLocationIconHome),
        SizedBox(width: SizeConfig.blockSizeHorizontal * 1),
        Text(
          AppStrings.elNasrStreetCairo,
          style: AppStyles.fontMontserratRegularGreyColor(
            context,
            size: fontSize ?? 12,
          ).copyWith(color: colorText),
        ),
        const SizedBox(width: 3),
        SvgPicture.asset(AppIcons.arrowDown),
      ],
    );
  }
}
