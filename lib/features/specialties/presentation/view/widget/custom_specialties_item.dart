import 'package:booking_doctor/core/widgets/custom_container_design.dart';
import 'package:booking_doctor/features/doctor/presentation/view/doctor_view.dart';
import 'package:booking_doctor/features/specialties/presentation/view/widget/custom_specialties_item_data.dart';
import 'package:flutter/material.dart';

class CustomSpecialtiesItem extends StatelessWidget {
  const CustomSpecialtiesItem({
    required this.image,
    required this.title,
    super.key,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DoctorView.routeName);
      },
      child: CustomContainerDesign(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: CustomSpecialtiesItemData(image: image, title: title),
        ),
      ),
    );
  }
}
