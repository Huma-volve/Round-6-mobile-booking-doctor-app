import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/profile/presentation/widgets/custom_text_field.dart';
import 'package:booking_doctor/features/profile/presentation/widgets/custom_password_form_field.dart';
import 'package:flutter/material.dart';

class PasswordManageScreen extends StatefulWidget {
  const PasswordManageScreen({super.key});

  @override
  State<PasswordManageScreen> createState() => _PasswordManageScreenState();
}

class _PasswordManageScreenState extends State<PasswordManageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,

        title: Text(
          'Password Management',
          style: AppStyles.georgia400Regular(context: context, font: 24.0),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Container(
          //padding: EdgeInsets.all(16),
          margin: const EdgeInsets.only(top: 16),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              CustomTextField(title: 'Current Password'),
              SizedBox(height: 16),

              CustomPasswordFormField(),
              SizedBox(height: 32),

              CustomTextField(title: 'New Pasword'),
              SizedBox(height: 16),
              CustomPasswordFormField(),
              SizedBox(height: 32),
              CustomTextField(title: 'Confirm New Password'),

              SizedBox(height: 16),

              CustomPasswordFormField(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.navigatorBottomColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              //foregroundColor: AppColors.whiteColor,
            ),
            onPressed: () {},
            child: Text(
              'Change Password',
              style: AppStyles.montserrat400Regular(
                context: context,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
