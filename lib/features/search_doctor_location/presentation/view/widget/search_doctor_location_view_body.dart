import 'dart:ui';

import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_sizes.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/doctor/data/model/static_doctor_model_data.dart';
import 'package:booking_doctor/features/map/presentation/view/map_view.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/search_text_field.dart';
import 'package:booking_doctor/features/search_doctor_location/data/model/cases_model.dart';
import 'package:booking_doctor/features/search_doctor_location/presentation/view/widget/custom_search_cases_item.dart';
import 'package:booking_doctor/features/search_doctor_location/presentation/view/widget/custom_search_doctor_location_item_list.dart';
import 'package:booking_doctor/features/search_doctor_location/presentation/view/widget/search_doctor_location_view_app_bar.dart';
import 'package:flutter/material.dart';

class SearchDoctorLocationViewBody extends StatefulWidget {
  const SearchDoctorLocationViewBody({super.key});

  @override
  State<SearchDoctorLocationViewBody> createState() =>
      _SearchDoctorLocationViewBodyState();
}

class _SearchDoctorLocationViewBodyState
    extends State<SearchDoctorLocationViewBody> {
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
                  element.specialty.toLowerCase().contains(title.toLowerCase()),
            )
            .toList();
      }
    });
  }

  sortItem() {
    filteredDoctorList.sort((a, b) => a.name.compareTo(b.name));
    setState(() {});
  }

  void filterBySpecialty(String specialty) {
    setState(() {
      filteredDoctorList = firstDoctorList
          .where(
            (doc) => doc.specialty.toLowerCase() == specialty.toLowerCase(),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.Padding),
      child: Column(
        children: [
          const SizedBox(height: 32),
          const SearchDoctorLocationViewAppBar(),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: CustomSearchTextfield(
                    onChanged: searchByTitle,
                    hintText: 'Search for specialty',
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 16)),
                SliverToBoxAdapter(
                  child: Row(
                    children: casesList.asMap().entries.map((e) {
                      final int index = e.key;
                      final value = e.value;
                      return Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: index != 2 ? 24 : 0),
                          child: CustomSearchCasesItem(
                            image: value.image,
                            title: value.title,
                            onTap: () {
                              if (index == 0) {
                                sortItem();
                              } else if (index == 1) {
                                filterSpecialty(context);
                              } else if (index == 2) {
                                Navigator.pushNamed(
                                  context,
                                  MapsView.routeName,
                                );
                              }
                            },
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 16)),
                SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        ' ${filteredDoctorList.length} Results ',
                        style: AppStyles.textRegular20(context: context)
                            .copyWith(
                              color: AppColors.blueColor12,
                              fontFamily: 'Georgia',
                            ),
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 24)),
                CustomSearchDoctorLocationItemList(
                  doctorsList: filteredDoctorList,
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 24)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> filterSpecialty(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black54,
      isScrollControlled: true,
      builder: (_) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Select Specialty',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.grey),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                Flexible(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: specialtiesList.length,
                    separatorBuilder: (context, index) =>
                        Divider(color: Colors.grey.shade300, height: 1),
                    itemBuilder: (context, i) {
                      return ListTile(
                        leading: const Icon(
                          Icons.local_hospital,
                          color: Colors.blueAccent,
                        ),
                        title: Text(
                          specialtiesList[i],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onTap: () {
                          filterBySpecialty(specialtiesList[i]);
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

List<String> specialtiesList = [
  'Psychiatrist',
  'Robert Johnson',
  'Helwan',
  'Heart doctor',
  'Dermatologist',
  'Cardiologist',
  'Orthopedic',
  'Pediatrician',
  'Neurologist',
  'Dentist',
  'Orthopedic',
];
