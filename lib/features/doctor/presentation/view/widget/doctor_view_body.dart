import 'package:booking_doctor/core/constants/app_sizes.dart';
import 'package:booking_doctor/features/doctor/data/model/static_doctor_model_data.dart';
import 'package:booking_doctor/features/doctor/presentation/view/widget/custom_doctor_item_list.dart';
import 'package:booking_doctor/features/doctor/presentation/view/widget/custom_tap_list.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/search_text_field.dart';
import 'package:flutter/material.dart';

class DoctorViewBody extends StatefulWidget {
  const DoctorViewBody({required this.index, super.key});
  final int index;

  @override
  State<DoctorViewBody> createState() => _DoctorViewBodyState();
}

class _DoctorViewBodyState extends State<DoctorViewBody> {
  late List<StaticDoctorModelData> firstDoctorList;
  late List<StaticDoctorModelData> filteredDoctorList;

  @override
  void initState() {
    super.initState();
    firstDoctorList = List.from(doctorsList);
    filteredDoctorList = List.from(doctorsList);
  }

  void searchByTitle(String title) {
    setState(() {
      if (title.isEmpty) {
        filteredDoctorList = List.from(firstDoctorList);
      } else {
        filteredDoctorList = firstDoctorList
            .where(
              (element) =>
                  element.name.toLowerCase().contains(title.toLowerCase()),
            )
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: SizedBox(height: 32)),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.Padding),
            child: CustomSearchTextfield(onChanged: searchByTitle),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 32)),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * .05,
            child: Padding(
              padding: EdgeInsets.only(left: AppSizes.Padding),
              child: CustomTapList(currentIndex: widget.index),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.Padding),
          sliver: CustomDoctorItemList(doctorList: filteredDoctorList),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
      ],
    );
  }
}
