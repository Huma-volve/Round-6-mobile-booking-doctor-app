import 'package:booking_doctor/core/helpers/custom_app_bar.dart';
import 'package:booking_doctor/features/doctor/presentation/view/widget/doctor_view_body.dart';
import 'package:flutter/material.dart';

class DoctorView extends StatelessWidget {
  const DoctorView({required this.index, super.key});
  static const routeName = 'doctor_view';
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'Doctors'),
      body: DoctorViewBody(index: index),
    );
  }
}
