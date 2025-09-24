import 'package:booking_doctor/features/doctor/presentation/view/doctor_view.dart';
import 'package:booking_doctor/features/map/presentation/view/map_view.dart';
import 'package:booking_doctor/features/map_search_result.dart/presentation/view/map_search_result_view.dart';
import 'package:booking_doctor/features/search/presentation/view/search_view.dart';
import 'package:booking_doctor/features/search_doctor_location/presentation/view/search_doctor_location_view.dart';
import 'package:booking_doctor/features/specialties/presentation/view/specialties_view.dart';
import 'package:flutter/material.dart';

class AppRouters {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
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
