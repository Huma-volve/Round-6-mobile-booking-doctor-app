import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/features/auth/presentations/views/screens/code_verification.dart';
import 'package:booking_doctor/features/auth/presentations/views/screens/forget_password.dart';
import 'package:booking_doctor/features/auth/presentations/views/screens/otp_code.dart';
import 'package:booking_doctor/features/auth/presentations/views/screens/set_password.dart';
import 'package:booking_doctor/features/auth/presentations/views/screens/sign_in_view.dart';
import 'package:booking_doctor/features/auth/presentations/views/screens/sign_in_your_email.dart';
import 'package:booking_doctor/features/auth/presentations/views/screens/sign_in_your_number_view.dart';
import 'package:booking_doctor/features/auth/presentations/views/screens/sign_up_view.dart';
import 'package:flutter/material.dart';

class AppRouters {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.signIn:
        return MaterialPageRoute(builder: (context) => SignInView());
      case AppRoutes.signUp:
        return MaterialPageRoute(builder: (context) => SignUpView());

      case AppRoutes.signInYourNumber:
        return MaterialPageRoute(builder: (context) => PhoneInputField());

      case AppRoutes.OTP:
        return MaterialPageRoute(builder: (context) => OTPVerificationPage());

      case AppRoutes.signInYourEmail:
        return MaterialPageRoute(builder: (context) => SignInYourEmail());
      case AppRoutes.forgetPassword:
        return MaterialPageRoute(builder: (context) => ForgetPassword());
      case AppRoutes.setPassword:
        return MaterialPageRoute(builder: (context) => SetPassword());
      case AppRoutes.codeVerification:
        return MaterialPageRoute(builder: (context) => VerificationPage());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("404 - Page not found"))),
        );
    }
  }
}
