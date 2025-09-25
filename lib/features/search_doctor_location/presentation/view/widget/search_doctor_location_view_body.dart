import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_sizes.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/map_search_result.dart/presentation/view/map_search_result_view.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/search_text_field.dart';
import 'package:booking_doctor/features/search_doctor_location/data/model/cases_model.dart';
import 'package:booking_doctor/features/search_doctor_location/presentation/view/widget/custom_search_cases_item.dart';
import 'package:booking_doctor/features/search_doctor_location/presentation/view/widget/custom_search_doctor_location_item_list.dart';
import 'package:booking_doctor/features/search_doctor_location/presentation/view/widget/search_doctor_location_view_app_bar.dart';
import 'package:flutter/material.dart';

class SearchDoctorLocationViewBody extends StatelessWidget {
  const SearchDoctorLocationViewBody({super.key});

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
                const SliverToBoxAdapter(child: CustomSearchTextfield()),
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
                              if (index == 2) {
                                Navigator.pushNamed(
                                  context,
                                  MapSearchResultView.routeName,
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
                        '24 Results ',
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
                const CustomSearchDoctorLocationItemList(),
                const SliverToBoxAdapter(child: SizedBox(height: 24)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
