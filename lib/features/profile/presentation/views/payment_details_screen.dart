import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/profile/presentation/views/add_new_card.dart';
import 'package:flutter/material.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,

        title: Text(
          'Payment Methods',
          style: AppStyles.georgia400Regular(context: context, font: 24.0),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.creditCard),
              Text(
                'Nothing to display here!',
                style: AppStyles.georgia400Regular(
                  context: context,
                  font: 26.0,
                ),
              ),
              Text(
                'Add your cards to make payment easier',
                style: AppStyles.montserrat400Regular(
                  context: context,
                  color: AppColors.addressColor,
                ),
              ),
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddNewCard()),
              );
            },
            child: Text(
              '+  Add Card',
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
