import 'package:booking_doctor/core/constants/app_routes.dart';

import 'package:booking_doctor/core/services/service_locator.dart';
import 'package:booking_doctor/features/favourite/presentation/cubit/favourite_cubit.dart';

import 'package:booking_doctor/features/booking_appointment/presentation/views/doctor_appointment_screen.dart';
import 'package:booking_doctor/features/doctor_details/presentation/views/doctor_details_screen.dart';
import 'package:flutter/material.dart';
import '../../features/booking_appointment/presentation/views/doctor_payment_screen.dart';
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
import 'package:booking_doctor/features/favourite/presentation/views/favourite_view.dart';
import 'package:booking_doctor/features/home/presentation/cubit/home_cubit.dart';
import 'package:booking_doctor/features/nav_bar/presentation/cubit/navbar_cubit.dart';
import 'package:booking_doctor/features/nav_bar/presentation/views/custom_bottom_navigation_bar.dart';
import 'package:booking_doctor/features/notification/presentation/view/notification_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booking_doctor/features/doctor/presentation/view/doctor_view.dart';
import 'package:booking_doctor/features/map/presentation/view/map_view.dart';
import 'package:booking_doctor/features/map_search_result.dart/presentation/view/map_search_result_view.dart';
import 'package:booking_doctor/features/search/presentation/view/search_view.dart';
import 'package:booking_doctor/features/search_doctor_location/presentation/view/search_doctor_location_view.dart';
import 'package:booking_doctor/features/specialties/presentation/view/specialties_view.dart';

class AppRouters{

static Route<dynamic> onGenerateRoute(RouteSettings settings){

  switch(settings.name){
    case AppRoutes.doctorDetailsScreen:{
      return MaterialPageRoute(builder: (_)=>DoctorDetailsScreen());
    }
    case AppRoutes.doctorAppointmentScreen:{
      return MaterialPageRoute(builder: (_)=>DoctorAppointmentScreen());
    }
    case AppRoutes.doctorPaymentScreen:{
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(builder: (_)=>DoctorPaymentScreen(time:args["time"],date: args["date"],));
    }
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
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: context.read<HomeCubit>(), // نفس الـ Cubit الموجود
            child: FavouriteView(),
          ),
        );
        return MaterialPageRoute(builder: (context) => const FavouriteView());
      case AppRoutes.notification:
        return MaterialPageRoute(
          builder: (context) => const NotificationView(),
        );

      case AppRoutes.addNewCard:
        return MaterialPageRoute(builder: (context) => const AddNewCard());

      case AppRoutes.editProfile:
        return MaterialPageRoute(
          builder: (context) => const EditProfileScreen(),
        );

      case AppRoutes.passwordManagment:
        return MaterialPageRoute(
          builder: (context) => const PasswordManageScreen(),
        );

      case AppRoutes.paymentDetails:
        return MaterialPageRoute(
          builder: (context) => const PaymentDetailsScreen(),
        );

      case AppRoutes.paymentMethod:
        return MaterialPageRoute(
          builder: (context) => const PaymentMethodScreen(),
        );

      case AppRoutes.setting:
        return MaterialPageRoute(builder: (context) => const SettingScreen());

      case AppRoutes.profile:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());

      case SearchView.routeName:
        return MaterialPageRoute(builder: (_) => const SearchView());
      case DoctorView.routeName:
        return MaterialPageRoute(builder: (_) => const DoctorView());
      case MapView.routeName:
        return MaterialPageRoute(builder: (_) => const MapView());
      case SpecialtiesView.routeName:
        return MaterialPageRoute(builder: (_) => const SpecialtiesView());
      case SearchDoctorLocationView.routeName:
        return MaterialPageRoute(
          builder: (_) => const SearchDoctorLocationView(),
        );
      case MapSearchResultView.routeName:
        return MaterialPageRoute(builder: (_) => const MapSearchResultView());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('404 - Page not found'))),
        );
    }
  }
}
