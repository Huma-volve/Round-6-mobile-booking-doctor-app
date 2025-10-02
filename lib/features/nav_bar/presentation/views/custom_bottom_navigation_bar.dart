import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_strings.dart';
import 'package:booking_doctor/core/services/service_locator.dart';
import 'package:booking_doctor/features/home/domain/use_case/get_doctor_near_you.dart';
import 'package:booking_doctor/features/home/presentation/cubit/home_cubit.dart';
import 'package:booking_doctor/features/home/presentation/views/home_view.dart';
import 'package:booking_doctor/features/nav_bar/presentation/cubit/navbar_cubit.dart';
import 'package:booking_doctor/features/nav_bar/presentation/views/widgets/bottom_navigation_bar_item_widget.dart';
import 'package:booking_doctor/features/profile/presentation/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({super.key});

  List<Widget> screens = [
    const HomeView(),
    BlocProvider(
      create: (context) => sl<HomeCubit>()..getDoctorNearYou(),
      child: const HomeView(),
    ),
    Container(color: Colors.amber),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final NavbarCubit cubit = context.read<NavbarCubit>();
    return BlocBuilder<NavbarCubit, NavbarState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: TextStyle(color: AppColors.primaryColor),
            currentIndex: cubit.index,
            onTap: (value) {
              context.read<NavbarCubit>().changeIndex(value);
            },
            items: [
              bottomNavigationBarItemWidget(
                imagePath: AppIcons.iconsHomeIcon,
                title: AppStrings.home,
              ),
              bottomNavigationBarItemWidget(
                imagePath: AppIcons.iconsBookingIcon,
                title: AppStrings.booking,
              ),
              bottomNavigationBarItemWidget(
                imagePath: AppIcons.iconsProfileIcon,
                title: AppStrings.profile,
              ),
            ],
          ),
          body: screens[cubit.index],
        );
      },
    );
  }
}
