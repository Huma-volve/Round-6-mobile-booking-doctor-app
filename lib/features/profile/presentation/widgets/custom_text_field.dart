import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;

  const CustomTextField({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.montserrat400Regular(
        context: context,
        font: 18.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
