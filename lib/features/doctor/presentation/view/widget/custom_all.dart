import 'package:booking_doctor/features/doctor/presentation/view/widget/custom_active_all.dart';
import 'package:booking_doctor/features/doctor/presentation/view/widget/custom_un_active_all.dart';
import 'package:flutter/material.dart';

class CustomAll extends StatelessWidget {
  const CustomAll({required this.isActive, super.key});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: const CustomUnActiveAll(),
      secondChild: const CustomActiveAll(),
      crossFadeState: isActive
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300),
    );
  }
}
