import 'package:booking_doctor/core/constants/app_sizes.dart';
import 'package:booking_doctor/features/doctor/presentation/view/widget/custom_doctor_item_list.dart';
import 'package:booking_doctor/features/doctor/presentation/view/widget/custom_tap_list.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/search_text_field.dart';
import 'package:flutter/material.dart';

class DoctorViewBody extends StatelessWidget {
  const DoctorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: SizedBox(height: 32)),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.Padding),
            child: const CustomSearchTextfield(),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 32)),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * .05,
            child: Padding(
              padding: EdgeInsets.only(left: AppSizes.Padding),
              child: const CustomTapList(),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.Padding),
          sliver: const CustomDoctorItemList(),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
      ],
    );
  }
}
