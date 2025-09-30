import 'package:booking_doctor/features/search_doctor_location/presentation/view/widget/search_doctor_location_view_body.dart';
import 'package:flutter/material.dart';

class SearchDoctorLocationView extends StatelessWidget {
  const SearchDoctorLocationView({super.key});
  static const routeName = 'search_doctor_location';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SearchDoctorLocationViewBody());
  }
}
