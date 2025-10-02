import 'package:booking_doctor/features/doctor/data/model/static_doctor_model_data.dart';
import 'package:booking_doctor/features/doctor/presentation/view/widget/custom_doctor_item.dart';
import 'package:flutter/material.dart';

class CustomDoctorItemList extends StatelessWidget {
  const CustomDoctorItemList({required this.doctorList, super.key});
  final List<StaticDoctorModelData> doctorList;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: doctorList.length,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) =>
          CustomDoctorItem(doctorModel: doctorList[index]),
    );
  }
}
