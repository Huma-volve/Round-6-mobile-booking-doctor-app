import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/favourite/presentation/cubit/favourite_cubit.dart';
import 'package:booking_doctor/features/favourite/presentation/views/widgets/favourite_list_widget.dart';
import 'package:booking_doctor/features/home/domain/entities/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteFilledBody extends StatelessWidget {
  FavouriteFilledBody({super.key, required this.doctorsNearYou});
  List<DoctorEntity> doctorsNearYou = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              dividerColor: AppColors.greySemiDarkColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: AppColors.primaryColor,
              labelColor: AppColors.primaryColor,
              labelStyle: AppStyles.fontGeorgiaRegularSecondaryColor(
                context,
                size: 16,
              ),
              tabs: [
                Tab(text: "Doctors"),
                Tab(text: "Hospital"),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: TabBarView(
                children: [
                  FavouriteListWidget(doctorsNearYou: doctorsNearYou),
                  FavouriteListWidget(doctorsNearYou: doctorsNearYou),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
