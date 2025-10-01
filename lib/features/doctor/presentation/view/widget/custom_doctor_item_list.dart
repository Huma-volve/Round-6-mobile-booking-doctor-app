import 'package:booking_doctor/features/doctor/presentation/view/widget/custom_doctor_item.dart';
import 'package:flutter/material.dart';

class CustomDoctorItemList extends StatelessWidget {
  const CustomDoctorItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 10,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) => const CustomDoctorItem(),
    );
  }
}
