import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CustomDropDownField extends StatefulWidget {
  final List<int> calender;
  final int? selectedValue;
  final String? title;

  const CustomDropDownField({
    required this.calender,
    super.key,
    this.selectedValue,
    this.title,
  });

  @override
  State<CustomDropDownField> createState() => _CustomDropDownFieldState();
}

class _CustomDropDownFieldState extends State<CustomDropDownField> {
  int? _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<int>(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.profilColor,
        hintText: widget.title,
        hintStyle: AppStyles.montserrat400Regular(
          context: context,
          font: 16.0,
          fontWeight: FontWeight.w500,
          color: AppColors.editProfileColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Colors.white, width: 2),
        ),
      ),
      initialValue: _currentValue,
      items: widget.calender
          .map((y) => DropdownMenuItem(value: y, child: Text(y.toString())))
          .toList(),
      onChanged: (val) {
        setState(() {
          _currentValue = val;
        });
      },
    );
  }
}
