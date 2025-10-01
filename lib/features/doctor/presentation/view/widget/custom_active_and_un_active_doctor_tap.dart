import 'package:booking_doctor/features/doctor/presentation/view/widget/custom_active_doctor_tap.dart';
import 'package:booking_doctor/features/doctor/presentation/view/widget/custom_un_active_doctor_tap.dart';
import 'package:flutter/material.dart';

class CustomActiveAndUnActiveDoctorTap extends StatelessWidget {
  const CustomActiveAndUnActiveDoctorTap({
    required this.image,
    required this.title,
    required this.isActive,
    super.key,
  });
  final String image;
  final String title;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      secondCurve: Curves.easeIn,
      firstCurve: Curves.easeIn,
      firstChild: CustomUnActiveDoctorTap(image: image, title: title),
      secondChild: CustomActiveDoctorTap(image: image, title: title),
      crossFadeState: isActive
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300),
    );
  }
}
