import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/core/utils/app_routers.dart';
import 'package:booking_doctor/features/booking_appointment/domain/payment/stripe_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  Stripe.publishableKey=StripeKeys.publishableKey;
  runApp(const DoctorApp());
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouters.onGenerateRoute,
      initialRoute: AppRoutes.doctorDetailsScreen,
    );
  }
}
