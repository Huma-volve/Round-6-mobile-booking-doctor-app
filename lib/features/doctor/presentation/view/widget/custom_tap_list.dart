import 'package:booking_doctor/features/doctor/presentation/view/widget/custom_active_and_un_active_doctor_tap.dart';
import 'package:booking_doctor/features/doctor/presentation/view/widget/custom_all.dart';
import 'package:booking_doctor/features/search/data/model/specialties_model.dart';
import 'package:flutter/material.dart';

class CustomTapList extends StatefulWidget {
  const CustomTapList({super.key});

  @override
  State<CustomTapList> createState() => _CustomTapListState();
}

class _CustomTapListState extends State<CustomTapList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: firstSpecialtiesList.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 8),
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: index == 0
              ? CustomAll(isActive: selectedIndex == index)
              : CustomActiveAndUnActiveDoctorTap(
                  isActive: selectedIndex == index,
                  title: firstSpecialtiesList[index].title,
                  image: firstSpecialtiesList[index].image,
                ),
        ),
      ),
    );
  }
}
