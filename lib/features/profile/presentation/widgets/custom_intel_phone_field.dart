import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomIntelPhoneField extends StatefulWidget {
  const CustomIntelPhoneField({super.key});

  @override
  State<CustomIntelPhoneField> createState() => _CustomIntelPhoneFieldState();
}

class _CustomIntelPhoneFieldState extends State<CustomIntelPhoneField> {
  String? phoneNumber;
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.profilColor,
        hintText: 'Enter Your Number',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
        hintStyle: AppStyles.montserrat400Regular(
          context: context,
          font: 18.0,
          fontWeight: FontWeight.w500,
          color: AppColors.editProfileColor,
        ),
      ),
      initialCountryCode: 'EG',
      onChanged: (phone) {
        phoneNumber = phone.completeNumber;
        print(phoneNumber);
      },
      validator: (phone) {
        if (phone == null || phone.number.isEmpty) {
          return "Please enter your phone number";
        }
        return null;
      },
    );
  }
}
