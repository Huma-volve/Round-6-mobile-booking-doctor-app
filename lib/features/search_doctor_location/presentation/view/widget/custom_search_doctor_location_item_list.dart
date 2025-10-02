import 'package:booking_doctor/features/doctor/data/model/static_doctor_model_data.dart';
import 'package:booking_doctor/features/search_doctor_location/presentation/view/widget/search_doctor_location_item.dart';
import 'package:flutter/material.dart';

class CustomSearchDoctorLocationItemList extends StatelessWidget {
  const CustomSearchDoctorLocationItemList({
    required this.doctorsList,

    super.key,
  });
  final List<StaticDoctorModelData> doctorsList;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        return CustomSearchDoctorLocationItem(
          staticDoctorDataModel: doctorsList[index],
        );
      },
      itemCount: doctorsList.length,
    );
  }
}
