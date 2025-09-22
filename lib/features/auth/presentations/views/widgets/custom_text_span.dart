import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/features/auth/presentations/views/screens/sign_up_view.dart';
import 'package:flutter/material.dart';

class CustomTextSpan extends StatelessWidget {
  const CustomTextSpan({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap,
  });
  final String text1;
  final String text2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: text1,
        style: TextStyle(fontSize: 16, color: AppColors.grey),
        children: [
          WidgetSpan(
            child: GestureDetector(
              onTap: onTap,
              child: Text(
                text2,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
