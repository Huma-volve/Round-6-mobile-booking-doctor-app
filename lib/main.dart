import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/core/utils/app_routers.dart';
import 'package:booking_doctor/features/search/presentation/view/search_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load environment variables
  await dotenv.load(fileName: 'keys.env');

  // Set Stripe publishable key
  Stripe.publishableKey = dotenv.env['STRIPE_PUBLISHABLE_KEY']!;

  // Run app with DevicePreview enabled
  runApp(DevicePreview(builder: (context) => const DoctorApp()));
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouters.onGenerateRoute,
      initialRoute: AppRoutes.doctorDetailsScreen,
      //initialRoute: AppRoutes.splachViewRouteName,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      builder: DevicePreview.appBuilder, // مهم لعرض preview
    );
  }
}
