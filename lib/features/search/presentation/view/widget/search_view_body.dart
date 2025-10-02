import 'package:booking_doctor/core/constants/app_sizes.dart';
import 'package:booking_doctor/features/map/presentation/view/map_view.dart';
import 'package:booking_doctor/features/search/data/model/specialties_model.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/custom_wrap_header.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/custom_wrap_history_item.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/custom_wrap_list.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/search_by_location_text.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  late List<SpecialtiesModel> specialtiesList;
  late List<SpecialtiesModel> filteredSpecialtiesList;

  @override
  void initState() {
    super.initState();
    specialtiesList = List.from(firstSpecialtiesList);
    filteredSpecialtiesList = List.from(firstSpecialtiesList);
  }

  void searchByTitle(String title) {
    setState(() {
      if (title.isEmpty) {
        filteredSpecialtiesList = List.from(specialtiesList);
      } else {
        filteredSpecialtiesList = specialtiesList
            .where(
              (element) =>
                  element.title.toLowerCase().contains(title.toLowerCase()),
            )
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: AppSizes.Padding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: CustomSearchTextfield(
                hintText: 'Search for specialty',
                onChanged: searchByTitle,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MapsView.routeName);
              },
              child: const SearchByLocationText(),
            ),
            const SizedBox(height: 16),
            const CustomWrapHeader(header: 'All Specialties'),
            const SizedBox(height: 16),
            CustomWrapList(resultSpecialtiesList: filteredSpecialtiesList),
            const SizedBox(height: 24),
            const CustomWrapHeader(header: 'History'),
            const SizedBox(height: 16),
            const CustomWrapHistoryItem(),
          ],
        ),
      ),
    );
  }
}
