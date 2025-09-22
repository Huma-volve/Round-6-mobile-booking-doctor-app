import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_container_icon.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_material_buttom.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_or.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_row_check_box.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_text_form_feild.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_text_span.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(AppIcons.arrowLeft, height: 24, width: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 15)),

            SliverToBoxAdapter(child: SvgPicture.asset(AppIcons.heartLogo)),
            SliverToBoxAdapter(child: SizedBox(height: 25)),

            SliverToBoxAdapter(
              child: Text(
                textAlign: TextAlign.center,
                "Create New Account",
                style: AppStyles.textGeorgia(context: context),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 25)),

            SliverToBoxAdapter(
              child: CustomTextFormFeild(
                iconpath: AppIcons.password,
                hintText: "Full Name",
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is required";
                  }
                  return null;
                },
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 25)),

            SliverToBoxAdapter(
              child: CustomTextFormFeild(
                iconpath: AppIcons.email,
                hintText: "Email",
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is required";
                  }
                  return null;
                },
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 25)),

            SliverToBoxAdapter(
              child: CustomTextFormFeild(
                iconpath: AppIcons.password,
                hintText: "Password",
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is required";
                  }
                  return null;
                },
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 15)),

            SliverToBoxAdapter(child: Center(child: CustomRowCheckBox())),
            SliverToBoxAdapter(child: SizedBox(height: 35)),
            SliverToBoxAdapter(child: CustomMaterialButton(text: "Sign up ")),
            SliverToBoxAdapter(child: SizedBox(height: 20)),

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
            SliverToBoxAdapter(child: SizedBox(height: 20)),

            SliverToBoxAdapter(
              child: Center(
                child: CustomTextSpan(
                  text1: "Already have an account! ",
                  text2: "Sign in",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
