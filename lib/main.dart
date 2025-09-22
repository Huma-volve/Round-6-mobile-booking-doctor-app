import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/core/utils/app_routers.dart';
import 'package:booking_doctor/features/nav_bar/presentation/views/custom_bottom_navigation_bar.dart';
import 'package:booking_doctor/features/home/presentation/views/home_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) => DoctorApp()));
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouters.onGenerateRoute,
      initialRoute: AppRoutes.customBottomNav,
    );
  }
}
