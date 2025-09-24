import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomMapResultArrowBack extends StatelessWidget {
  const CustomMapResultArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        shadows: const [BoxShadow(color: Color(0x3F000000), blurRadius: 12)],
      ),
      child: Center(child: SvgPicture.asset(AppIcons.iconsArrowBackIcon)),
    );
  }
}
