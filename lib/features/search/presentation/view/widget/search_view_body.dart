import 'package:booking_doctor/core/constants/app_sizes.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/custom_wrap_header.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/custom_wrap_history_item.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/custom_wrap_list.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/search_by_location_text.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: AppSizes.Padding),
      child: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32),
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: CustomSearchTextfield(),
            ),
            SizedBox(height: 16),
            SearchByLocationText(),
            SizedBox(height: 16),
            CustomWrapHeader(header: 'All Specialties'),
            SizedBox(height: 16),
            CustomWrapList(),
            SizedBox(height: 24),
            CustomWrapHeader(header: 'History'),
            SizedBox(height: 16),
            CustomWrapHistoryItem(),
          ],
        ),
      ),
    );
  }
}
