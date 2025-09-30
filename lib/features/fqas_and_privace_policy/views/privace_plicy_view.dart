import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class PrivacePolicyView extends StatelessWidget {
  const PrivacePolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        surfaceTintColor: AppColors.whiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, size: 18),
        ),
        title: Text(
          'Privacy Policy',
          style: AppStyles.font24Regular(
            context,
          ).copyWith(color: AppColors.secondaryTextColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Last Updated: ',
                  style: AppStyles.font24Regular(
                    context,
                  ).copyWith(color: AppColors.secondaryTextColor, fontSize: 20),
                  children: [
                    TextSpan(
                      text: ' 22/9/2025',
                      style: AppStyles.font24Regular(
                        context,
                      ).copyWith(color: AppColors.greyTextColor, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Welcome to Cure. Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your personal information when you use our doctor appointment booking app.',
                style: AppStyles.font16Meduim(
                  context,
                ).copyWith(color: AppColors.darkGreyColor),
              ),
              SizedBox(height: 40),
              Text(
                'terms & conditions',
                style: AppStyles.font24Regular(
                  context,
                ).copyWith(color: AppColors.secondaryTextColor),
              ),
              SizedBox(height: 10),
              Text(
                """By registering, accessing, or using this app, you confirm that you are at least 18 years old (or have parental/guardian consent if younger) and agree to be bound by these Terms and our Privacy Policy.""",
                style: AppStyles.font16Meduim(
                  context,
                ).copyWith(color: AppColors.darkGreyColor),
              ),
              SizedBox(height: 5),
              Text(
                """You agree to:
            • Use the app only for lawful purposes.
            • Provide accurate and complete information
              during registration and booking.
            •  Not impersonate others or create fake 
              accounts.
              You may not:
            •  Disrupt or interfere with the app’s functionality.
            •  Try to access data or systems not meant for 
              you.
            •  Use the app to harass or abuse doctors or staff. 
Your data is handled in accordance with our [Privacy Policy]. You are responsible for keeping your login credentials secure.""",
                style: AppStyles.font16Meduim(
                  context,
                ).copyWith(color: AppColors.darkGreyColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
