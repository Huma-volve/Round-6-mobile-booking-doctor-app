import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/features/booking_appointment/domain/payment/payment_manager.dart';
import 'package:booking_doctor/features/booking_appointment/presentation/business_logic/payment/payment_cubit.dart';
import 'package:booking_doctor/features/booking_appointment/presentation/views/doctor_appointment_screen.dart';
import 'package:booking_doctor/features/doctor_details/presentation/views/doctor_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
  create: (context) => PaymentCubit()..getPayment(),
  child: Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading:IconButton(
        icon: Icon(CupertinoIcons.back, color: AppColors.black),
    onPressed: () => Navigator.pop(context)),
        title: Text("Book Appointment", style: AppStyles.appBarTitleStyle),
        centerTitle: true,
      ),
      body: BlocBuilder<PaymentCubit, PaymentState>(
  builder: (context, state) {
    if(state is PaymentLoading){
      return loadingWidget();
    }
    else{
      return Padding(
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
                    height: height*.13,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset: Offset(1, 1),
                              color: AppColors.bioColor.withOpacity(.2)
                          )
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                                'Price',
                                style: AppStyles.bottomPriceStyle
                            ),
                            Text(
                              '/hour',
                              style: AppStyles.time1Style,
                            ),
                            Spacer(),
                            Text(
                                '350\$',
                                style: AppStyles.montMedium.copyWith(color: AppColors.red)
                            ),
                          ],
                        ),
                        SizedBox(height: height*.003,),
                        SizedBox(
                          width: double.infinity,
                          height: height*.05,
                          child: ElevatedButton(
                            onPressed:(){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.blueBottom,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                                'Pay',
                                style: AppStyles.montMedium.copyWith(color: AppColors.white)
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
      );
    }
  },
),
    ),
);
  }
}
