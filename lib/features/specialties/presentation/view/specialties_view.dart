import 'package:booking_doctor/core/helpers/custom_app_bar.dart';
import 'package:booking_doctor/features/specialties/presentation/view/widget/specialties_view_body.dart';
import 'package:flutter/material.dart';

class SpecialtiesView extends StatelessWidget {
  const SpecialtiesView({super.key});
  static const routeName = 'specialties_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'Specialties'),
      body: const SpecialtiesViewBody(),
    );
  }
}
