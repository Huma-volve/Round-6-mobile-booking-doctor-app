import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/favourite/presentation/views/widgets/favourite_list_widget.dart';
import 'package:flutter/material.dart';

class FavouriteFilledBody extends StatelessWidget {
  const FavouriteFilledBody({super.key});

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
              tabs: const [
                Tab(text: 'Doctors'),
                Tab(text: 'Hospital'),
              ],
            ),
            const SizedBox(height: 16),
            const Expanded(
              child: TabBarView(
                children: [FavouriteListWidget(), FavouriteListWidget()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
