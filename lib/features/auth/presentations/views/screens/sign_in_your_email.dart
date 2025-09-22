import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_container_icon.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_material_buttom.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_or.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_text_form_feild.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_text_span.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInYourEmail extends StatelessWidget {
  const SignInYourEmail({super.key});

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
                "Login to your Account",
                style: AppStyles.textGeorgia(context: context),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 25)),

            SliverToBoxAdapter(
              child: CustomTextFormFeild(
                iconpath: AppIcons.password,
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

            SliverToBoxAdapter(
              child: GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.forgetPassword),

                child: Text(
                  "Forget password?",
                  textAlign: TextAlign.end,
                  style: AppStyles.textRegular15(
                    context: context,
                  ).copyWith(color: Colors.red),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 35)),
            SliverToBoxAdapter(child: CustomMaterialButton(text: "Sign in ")),
            SliverToBoxAdapter(child: SizedBox(height: 20)),

            SliverToBoxAdapter(child: CustomOr()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),

            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomContainerIcon(iconPath: AppIcons.facebook),
                  SizedBox(width: 12),
                  CustomContainerIcon(iconPath: AppIcons.appleLogo),
                ],
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20)),

            SliverToBoxAdapter(
              child: Center(
                child: CustomTextSpan(
                  text1: "Don’t have an account? ",
                  text2: "Sign up",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
