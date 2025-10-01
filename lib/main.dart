import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/core/utils/app_routers.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "keys.env");
  Stripe.publishableKey = dotenv.env['STRIPE_PUBLISHABLE_KEY']!;
  runApp(DevicePreview(enabled: true, builder: (context) => const DoctorApp()));
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
    );
  }
}
