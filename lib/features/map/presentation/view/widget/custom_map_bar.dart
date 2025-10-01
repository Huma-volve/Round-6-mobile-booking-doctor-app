import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/features/map/presentation/view/widget/custom_map_bar_data.dart';
import 'package:booking_doctor/features/map/presentation/view/widget/custom_map_bar_icon.dart';
import 'package:booking_doctor/features/search_doctor_location/presentation/view/search_doctor_location_view.dart';
import 'package:flutter/material.dart';

class CustomMapBar extends StatelessWidget {
  const CustomMapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CustomMapBarIcon(image: AppIcons.iconsArrowBackIcon),
          ),
          const SizedBox(width: 16),
          const CustomMapBarData(),
          const SizedBox(width: 16),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SearchDoctorLocationView.routeName);
            },
            child: const CustomMapBarIcon(image: AppIcons.iconsMagniferIcon),
          ),
        ],
      ),
    );
  }
}
