import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({super.key, this.onTap, this.iconPath});
  final void Function()? onTap;
  final String? iconPath;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 5,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: SvgPicture.asset(iconPath ?? AppIcons.iconsBellIcon),
      ),
    );
  }
}
