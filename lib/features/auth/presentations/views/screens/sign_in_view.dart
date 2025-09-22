import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/core/utils/app_routers.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_container.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_material_buttom.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_or.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_text_span.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(AppIcons.arrowLeft, height: 24, width: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Image.asset(AppImages.welcome, width: 200, height: 200),
            ),
            SliverToBoxAdapter(
              child: Text(
                textAlign: TextAlign.center,
                "Let’s You In",
                style: AppStyles.textGeorgia(context: context),
              ),
            ),
            SliverToBoxAdapter(
              child: CustomContainer(
                iconPath: AppIcons.facebook,
                text: "Sign in with Facebook",
                onTap: () {},
              ),
            ),
            SliverToBoxAdapter(
              child: CustomContainer(
                iconPath: AppIcons.google,
                text: " Sign in with Google",
                onTap: () {},
              ),
            ),
            SliverToBoxAdapter(
              child: CustomContainer(
                iconPath: AppIcons.appleLogo,
                text: "Sign in with Apple",
                onTap: () {},
              ),
            ),
            SliverToBoxAdapter(child: CustomOr()),
            SliverToBoxAdapter(
              child: CustomMaterialButton(
                text: "Sign in with your Phone Number",
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.signInYourNumber);
                },
              ),
            ),
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
