import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/core/widgets/custom_text_form_field.dart';
import 'package:booking_doctor/features/profile/presentation/widgets/custom_edit_profile_form.dart';
import 'package:booking_doctor/features/profile/presentation/widgets/custom_password_form_field.dart';
import 'package:booking_doctor/features/profile/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/credit_card_cvc_input_formatter.dart';
import 'package:flutter_multi_formatter/formatters/credit_card_expiration_input_formatter.dart';
import 'package:flutter_multi_formatter/formatters/credit_card_number_input_formatter.dart';
import 'package:flutter_svg/svg.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({super.key});

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  bool _obscureCurrent = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,

        title: Text(
          'Add New Card',
          style: AppStyles.georgia400Regular(context: context, font: 24.0),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(AppImages.blueGradientCreditCard),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Cardholder Name",
                  style: AppStyles.montserrat400Regular(
                    context: context,
                    font: 14.0,
                  ),
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Cardholder Name",
                  hintStyle: AppStyles.montserrat400Regular(
                    context: context,
                    font: 16.0,
                    fontWeight: FontWeight.w500,
                    color: AppColors.editProfileColor,
                  ),
                  filled: true,
                  fillColor: AppColors.profilColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 16),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Card Number",
                  style: AppStyles.montserrat400Regular(
                    context: context,
                    font: 14.0,
                  ),
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                obscureText: _obscureCurrent,
                keyboardType: TextInputType.number,
                inputFormatters: [CreditCardNumberInputFormatter()],
                decoration: InputDecoration(
                  hintText: "Card Number",
                  hintStyle: AppStyles.montserrat400Regular(
                    context: context,
                    font: 16.0,
                    fontWeight: FontWeight.w500,
                    color: AppColors.editProfileColor,
                  ),
                  filled: true,
                  fillColor: AppColors.profilColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: _obscureCurrent
                        ? SvgPicture.asset(AppIcons.passwordInputIcon)
                        : SvgPicture.asset(AppIcons.passwordEyeIcon),
                    onPressed: () {
                      setState(() {
                        _obscureCurrent = !_obscureCurrent;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 32),
                child: Row(
                  
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Expiry Date"),
                          SizedBox(height: 8),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              CreditCardExpirationDateFormatter(),
                            ],
                            decoration: InputDecoration(
                              hintText: "MM|YY",
                              hintStyle: AppStyles.montserrat400Regular(context: context,font: 14.0,fontWeight: FontWeight.w500),
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                     
                    SizedBox(width: 16,),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("CVV Code",style: AppStyles.montserrat400Regular(context: context,font: 14.0,fontWeight: FontWeight.w500),),
                          SizedBox(height: 8),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [CreditCardCvcInputFormatter()],
                            decoration: InputDecoration(
                              hintText: "123",
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none,
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
              'Save',
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
