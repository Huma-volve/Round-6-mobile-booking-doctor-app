import 'package:booking_doctor/features/doctor/presentation/view/doctor_view.dart';
import 'package:booking_doctor/features/search/data/model/specialties_model.dart';
import 'package:booking_doctor/features/specialties/presentation/view/widget/custom_specialties_item.dart';
import 'package:flutter/material.dart';

class SpecialtiesViewBody extends StatelessWidget {
  const SpecialtiesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: List.generate(
              secondSpecialtiesList.length,
              (index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    DoctorView.routeName,
                    arguments: index,
                  );
                },
                child: CustomSpecialtiesItem(
                  image: secondSpecialtiesList[index].image,
                  title: secondSpecialtiesList[index].title,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
