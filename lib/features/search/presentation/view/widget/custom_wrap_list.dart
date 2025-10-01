import 'package:booking_doctor/core/widgets/custom_container_design.dart';
import 'package:booking_doctor/features/search/data/model/specialties_model.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/custom_search_specialties_item_data.dart';
import 'package:booking_doctor/features/specialties/presentation/view/specialties_view.dart';
import 'package:flutter/material.dart';

class CustomWrapList extends StatelessWidget {
  const CustomWrapList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 16,
      children: List.generate(
        firstSpecialtiesList.length,
        (index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SpecialtiesView.routeName);
          },
          child: CustomContainerDesign(
            child: CustomSearchSpecialtiesItemData(
              image: firstSpecialtiesList[index].image,
              title: firstSpecialtiesList[index].title,
            ),
          ),
        ),
      ),
    );
  }
}
