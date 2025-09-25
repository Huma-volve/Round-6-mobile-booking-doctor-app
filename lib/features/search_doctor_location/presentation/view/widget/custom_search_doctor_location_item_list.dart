import 'package:booking_doctor/features/search_doctor_location/presentation/view/widget/search_doctor_location_item.dart';
import 'package:flutter/material.dart';

class CustomSearchDoctorLocationItemList extends StatelessWidget {
  const CustomSearchDoctorLocationItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) => const CustomSearchDoctorLocationItem(),
      itemCount: 10,
    );
  }
}
