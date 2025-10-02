import 'package:booking_doctor/core/widgets/custom_container_design.dart';
import 'package:booking_doctor/features/doctor/presentation/view/doctor_view.dart';
import 'package:booking_doctor/features/search/data/model/specialties_model.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/custom_search_specialties_item_data.dart';
import 'package:flutter/material.dart';

class CustomWrapList extends StatelessWidget {
  const CustomWrapList({required this.resultSpecialtiesList, super.key});

  final List<SpecialtiesModel> resultSpecialtiesList;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 16,
      children: List.generate(
        resultSpecialtiesList.length,

        (index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              DoctorView.routeName,
              arguments: index,
            );
          },
          child: CustomContainerDesign(
            child: CustomSearchSpecialtiesItemData(
              image: resultSpecialtiesList[index].image,
              title: resultSpecialtiesList[index].title,
            ),
          ),
        ),
      ),
    );
  }
}
