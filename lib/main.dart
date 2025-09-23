import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/core/utils/app_routers.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const DoctorApp()));

  // runApp(DevicePreview(builder: (context) => DoctorApp()));
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: AppRoutes.splachViewRouteName,
      onGenerateRoute: AppRouters.onGenerateRoute,

      theme: ThemeData(scaffoldBackgroundColor: Colors.white),

      // onGenerateRoute: AppRouters.onGenerateRoute,
      // initialRoute: AppRoutes.customBottomNav,
    );
  }
}
