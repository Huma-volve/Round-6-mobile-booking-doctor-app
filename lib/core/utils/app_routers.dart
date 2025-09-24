import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/features/fqas_and_privace_policy/views/fqa_view.dart';
import 'package:booking_doctor/features/fqas_and_privace_policy/views/privace_plicy_view.dart';
import 'package:booking_doctor/features/my_booking/presentation/views/my_booking.dart';
import 'package:booking_doctor/features/onboarding/presentation/views/onboarding.dart';
import 'package:booking_doctor/features/profile/presentation/views/add_new_card.dart';
import 'package:booking_doctor/features/profile/presentation/views/edit_profile_screen.dart';
import 'package:booking_doctor/features/profile/presentation/views/password_management_screen.dart';
import 'package:booking_doctor/features/profile/presentation/views/payment-method_screen.dart';
import 'package:booking_doctor/features/profile/presentation/views/payment_details_screen.dart';
import 'package:booking_doctor/features/profile/presentation/views/profile_screen.dart';
import 'package:booking_doctor/features/profile/presentation/views/setting_screen.dart';
import 'package:booking_doctor/features/review/presentation/views/add_review_view.dart';
import 'package:booking_doctor/features/splach/splach_view.dart';
import 'package:flutter/material.dart';
import 'package:booking_doctor/features/favourite/presentation/views/favourite_view.dart';
import 'package:booking_doctor/features/nav_bar/presentation/cubit/navbar_cubit.dart';
import 'package:booking_doctor/features/nav_bar/presentation/views/custom_bottom_navigation_bar.dart';
import 'package:booking_doctor/features/notification/presentation/view/notification_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouters {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onboardingViewRouteName:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case AppRoutes.splachViewRouteName:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case AppRoutes.fAQsViewRouteName:
        return MaterialPageRoute(builder: (context) => FAQScreen());
      case AppRoutes.privacyPolicyRouteName:
        return MaterialPageRoute(
          builder: (context) => const PrivacePolicyView(),
        );
      case AppRoutes.bookingViewRouteName:
        return MaterialPageRoute(builder: (context) => const MyBookingView());
      case AppRoutes.reviewsRouteName:
        return MaterialPageRoute(builder: (context) => const AddReviewView());

      case AppRoutes.customBottomNav:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => NavbarCubit(),
            child: CustomBottomNavigationBar(),
          ),
        );
      case AppRoutes.favourite:
        return MaterialPageRoute(builder: (context) => FavouriteView());
      case AppRoutes.notification:
        return MaterialPageRoute(builder: (context) => NotificationView());

      case AppRoutes.addNewCard:
        return MaterialPageRoute(builder: (context) => AddNewCard());

      case AppRoutes.editProfile:
        return MaterialPageRoute(builder: (context) => EditProfileScreen());

      case AppRoutes.passwordManagment:
        return MaterialPageRoute(builder: (context) => PasswordManageScreen());

      case AppRoutes.paymentDetails:
        return MaterialPageRoute(builder: (context) => PaymentDetailsScreen());

      case AppRoutes.paymentMethod:
        return MaterialPageRoute(builder: (context) => PaymentMethodScreen());

      case AppRoutes.setting:
        return MaterialPageRoute(builder: (context) => SettingScreen());

      case AppRoutes.profile:
        return MaterialPageRoute(builder: (context) => ProfileScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("404 - Page not found"))),
        );
    }
  }
}
