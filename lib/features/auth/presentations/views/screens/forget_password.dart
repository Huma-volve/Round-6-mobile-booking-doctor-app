import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_material_buttom.dart';
import 'package:booking_doctor/features/auth/presentations/views/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
        title: Text("Forget your password"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 60)),

            SliverToBoxAdapter(
              child: Text("Please enter your email to reset the password "),
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
            SliverToBoxAdapter(child: SizedBox(height: 40)),

            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child: CustomMaterialButton(
                    text: "Reset Password",
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.OTP);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
