import 'dart:async';
import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ResendCodeText extends StatefulWidget {
  const ResendCodeText({super.key});

  @override
  State<ResendCodeText> createState() => _ResendCodeTextState();
}

class _ResendCodeTextState extends State<ResendCodeText> {
  int secondsRemaining = 55;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining > 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(fontSize: 16, color: Colors.black),
        children: [
          const TextSpan(text: "Resend code in "),
          TextSpan(
            text: "$secondsRemaining s",
            style: const TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
