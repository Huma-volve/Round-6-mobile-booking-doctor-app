import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/profile/presentation/views/password_management_screen.dart';
import 'package:booking_doctor/features/profile/presentation/views/payment_details_screen.dart';
import 'package:booking_doctor/features/profile/presentation/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,

        title: Text(
          'Payment Methods',
          style: AppStyles.georgia400Regular(context: context, font: 24.0),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text('Credit / Debit Card',style: AppStyles.georgia400Regular(context: context),),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PasswordManageScreen(),
                    ),
                  );
                },
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentDetailsScreen(),
                      ),
                    );
                  },
                  child: CustomListTile(
                    fontSize: 16.0,
                    leading: SvgPicture.asset(AppIcons.visaIcon),
                    title: 'VISA',
                    trailing: SvgPicture.asset(AppIcons.arrowIcon),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              CustomListTile(
                fontSize: 16.0,
                leading: SvgPicture.asset(AppIcons.mastercardIcon),
                title: ' MasterCard',
                trailing: SvgPicture.asset(AppIcons.arrowIcon),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
