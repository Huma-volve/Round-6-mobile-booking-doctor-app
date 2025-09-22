import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/features/nav_bar/presentation/cubit/navbar_cubit.dart';
import 'package:booking_doctor/features/nav_bar/presentation/views/custom_bottom_navigation_bar.dart';
import 'package:booking_doctor/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouters {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.customBottomNav:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => NavbarCubit(),
            child: CustomBottomNavigationBar(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("404 - Page not found"))),
        );
    }
  }
}
