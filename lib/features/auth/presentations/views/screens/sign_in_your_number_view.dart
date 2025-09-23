import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_container_icon.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_material_buttom.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_or.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_row_check_box.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_text_span.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneInputField extends StatelessWidget {
  const PhoneInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(AppIcons.arrowLeft, height: 24, width: 24),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 25)),
            SliverToBoxAdapter(child: SvgPicture.asset(AppIcons.heartLogo)),
            SliverToBoxAdapter(child: SizedBox(height: 25)),

            SliverToBoxAdapter(
              child: Text(
                textAlign: TextAlign.center,
                "Login to your Account",
                style: AppStyles.textGeorgia(context: context),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 60)),

            SliverToBoxAdapter(
              child: IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Enter your number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                initialCountryCode: 'EG',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 10)),

            SliverToBoxAdapter(child: Center(child: CustomRowCheckBox())),
            SliverToBoxAdapter(child: SizedBox(height: 30)),

            SliverToBoxAdapter(
              child: CustomMaterialButton(
                text: "Sign in",
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.OTP);
                },
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: 40)),

            SliverToBoxAdapter(child: CustomOr()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),

            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomContainerIcon(iconPath: AppIcons.facebook),
                  SizedBox(width: 12),
                  CustomContainerIcon(iconPath: AppIcons.google),
                  SizedBox(width: 12),
                  CustomContainerIcon(iconPath: AppIcons.appleLogo),
                ],
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 10)),

            SliverToBoxAdapter(
              child: Center(
                child: CustomTextSpan(
                  text1: "Don’t have an account? ",
                  text2: "Sign up",
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.signUp);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
