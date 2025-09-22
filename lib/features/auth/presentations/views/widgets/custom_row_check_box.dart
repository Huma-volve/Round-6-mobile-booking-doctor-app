import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRowCheckBox extends StatefulWidget {
  const CustomRowCheckBox({super.key});

  @override
  State<CustomRowCheckBox> createState() => _CustomRowCheckBoxState();
}

class _CustomRowCheckBoxState extends State<CustomRowCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          activeColor: AppColors.primary,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
        ),
        const Text("Remember me"),
      ],
    );
  }
}
