import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/profile/presentation/views/password_management_screen.dart';
import 'package:booking_doctor/features/profile/presentation/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,

        title: Text(
          'Settings',
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
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PasswordManageScreen(),
                    ),
                  );
                },
                child: CustomListTile(
                  fontSize: 16.0,
                  leading: SvgPicture.asset(AppIcons.passwordIcon),
                  title: 'Password Management',
                  trailing: SvgPicture.asset(AppIcons.arrowIcon),
                ),
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  _showLogoutDialog(context);
                },
                child: CustomListTile(
                  fontSize: 16.0,
                  leading: SvgPicture.asset(AppIcons.deleteIcon),
                  title: 'Delete Account',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, // مايتقفلش بالضغط برة
    builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          children: [
            Text(
              'Delete account',
              style: AppStyles.georgia400Regular(context: context, font: 24.0),
            ),

            SizedBox(height: 8),
            Divider(thickness: 1),
          ],
        ),
        content: Text(
          "Are you sure you want to delete your account?",
          textAlign: TextAlign.center,
          style: AppStyles.fontMontserratRegularGreyColor(context, size: 16),
        ),
        actionsAlignment: MainAxisAlignment.spaceBetween,
        actions: [
          // Cancel Button
          SizedBox(
            width: 120,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.pop(context); // يقفل البوب أب
              },
              child: Text(
                "Cancel",
                style: AppStyles.fontMontserratRegularGreyColor(
                  context,
                  size: 14,
                ),
              ),
            ),
          ),

          // Yes, Logout Button
          SizedBox(
            width: 120,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/login");
              },
              child: Text(
                "Yes,delete",
                style: AppStyles.montserrat400Regular(
                  context: (context),
                  font: 14.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
