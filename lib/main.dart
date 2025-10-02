import 'package:booking_doctor/core/utils/app_routers.dart';
import 'package:booking_doctor/features/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(DevicePreview(builder: (context) => const DoctorApp()));
  runApp(const DoctorApp());
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouters.onGenerateRoute,
      initialRoute: SearchView.routeName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
