import 'package:booking_doctor/core/helpers/custom_app_bar.dart';
import 'package:booking_doctor/features/doctor/presentation/view/widget/doctor_view_body.dart';
import 'package:flutter/material.dart';

class DoctorView extends StatelessWidget {
  const DoctorView({super.key});
  static const routeName = 'doctor_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'Doctors'),
      body: const DoctorViewBody(),
    );
  }
}
