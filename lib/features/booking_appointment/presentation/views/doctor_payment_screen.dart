import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/features/booking_appointment/domain/payment/payment_manager.dart';
import 'package:booking_doctor/features/doctor_details/presentation/views/doctor_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_styles.dart';

class DoctorPaymentScreen extends StatefulWidget {
  final String date;
  final String time;
  DoctorPaymentScreen({required this.time, required this.date, super.key});

  @override
  State<DoctorPaymentScreen> createState() => _DoctorPaymentScreenState();
}

class _DoctorPaymentScreenState extends State<DoctorPaymentScreen> {
  bool visaStatus = false;
  Color selectedColor = AppColors.white;
  Color textColor = AppColors.bioColor;
   showCustomSnackBar(){
    final snackBar = SnackBar(
      content: Text(
        "Will be available soon..!",
        style: TextStyle(color: AppColors.white),
      ),
      backgroundColor: AppColors.bioColor,
      showCloseIcon: true,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: Icon(CupertinoIcons.back, color: AppColors.black),
        title: Text("Book Appointment", style: AppStyles.appBarTitleStyle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            doctorDefinition(context),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      color: AppColors.blueBottom,
                      size: 15,
                    ),
                    Text(
                      " ${widget.date} - ${widget.time}",
                      style: AppStyles.bioStyle.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Reschedule",
                    style: AppStyles.addReviewStyle.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text("Payment Method", style: AppStyles.nameStyle),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: selectedColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: selectedColor, width: .1),
              ),
              child: Row(
                children: [
                  Checkbox(
                    value: visaStatus,
                    onChanged: (val) {
                      setState(() {
                        visaStatus = val!;
                        if (visaStatus == true) {
                          selectedColor = AppColors.green.withOpacity(.2);
                          textColor = AppColors.green;
                          PaymentManager.makePayment(100, "USD");
                        } else {
                          selectedColor = AppColors.white;
                          textColor = AppColors.bioColor;
                        }
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200),
                      side: BorderSide(color: AppColors.bioColor, width: .3),
                    ),
                    activeColor: AppColors.green,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Credit Card",
                    style: AppStyles.bioStyle.copyWith(
                      fontSize: 14,
                      color: textColor,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 35,
                          width: 40,
                          child: Image.asset(AppImages.visa),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.white, width: .1),
              ),
              child: Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (v) {
                      showCustomSnackBar();
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200),
                      side: BorderSide(color: AppColors.bioColor, width: .3),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Paypal",
                    style: AppStyles.bioStyle.copyWith(
                      fontSize: 14,
                      color: AppColors.bioColor,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 35,
                          width: 40,
                          child: Image.asset(AppImages.paypal),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.white, width: .1),
              ),
              child: Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_){
                      showCustomSnackBar();
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200),
                      side: BorderSide(color: AppColors.bioColor, width: .3),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Apple Pay",
                    style: AppStyles.bioStyle.copyWith(
                      fontSize: 14,
                      color: AppColors.bioColor,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 35,
                          width: 40,
                          child: Image.asset(AppImages.apple),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Price',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '/hour',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            Spacer(),
                            Text(
                              '350\$',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFF5722),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        // Continue button
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF4285F4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              ' Pay ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
