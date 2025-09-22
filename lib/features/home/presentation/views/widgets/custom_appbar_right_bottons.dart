import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/features/home/presentation/views/widgets/custom_button_with_icon.dart';
import 'package:flutter/material.dart';

class CustomAppbarRightBottons extends StatelessWidget {
  const CustomAppbarRightBottons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomButtonWithIcon(
          iconPath: AppIcons.iconsEmptyHeartIcon,
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.favourite);
          },
        ),
        SizedBox(width: 16),
        CustomButtonWithIcon(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.notification);
          },
        ),
      ],
    );
  }
}
