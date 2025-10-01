import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/profile/presentation/views/payment-method_screen.dart';
import 'package:booking_doctor/features/profile/presentation/views/edit_profile_screen.dart';
import 'package:booking_doctor/features/profile/presentation/views/setting_screen.dart';
import 'package:booking_doctor/features/profile/presentation/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Map<String, dynamic>? userData;
  bool isNotification = true;
  @override
  void initState() {
    super.initState();
    // _loadUserData();
  }

  // Future<void> _loadUserData() async {
  //   final userJson = await sl<CacheHelper>().getData('user');
  //   setState(() {
  //     userData = jsonDecode(userJson!);
  //   });
  // }

  // Future<void> _logout() async {
  //   try {
  //     await sl<UserRepository>().logout();
  //     if (mounted) {
  //       Navigator.pushNamedAndRemoveUntil(
  //         context,
  //         RoutesNames.login,
  //         (route) => false,
  //       );
  //     }
  //   } catch (e) {
  //     if (mounted) {
  //       ScaffoldMessenger.of(
  //         context,
  //       ).showSnackBar(const SnackBar(content: Text('Logout failed')));
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 8,
                ),
                margin: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: AppColors.profilColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.editProfile);
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(AppImages.profileImage),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Seif Mohamed",
                              style: AppStyles.georgia400Regular(
                                context: context,
                              ),
                            ),
                            SizedBox(height: 4),

                            Row(
                              children: [
                                SvgPicture.asset(AppIcons.locationIcon),
                                const SizedBox(width: 8),
                                Text(
                                  '129, El-Nasr Street, Cairo',
                                  style: AppStyles.montserrat400Thin(
                                    context: context,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(AppIcons.arrowIcon),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomListTile(
                leading: SvgPicture.asset(AppIcons.bellIcon),
                title: 'Notification',
                trailing: Switch(
                  activeTrackColor: AppColors.switchActiveColor,
                  activeThumbColor: Colors.white,
                  value: isNotification,
                  onChanged: (val) {
                    setState(() {
                      isNotification = val;
                    });
                  },
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.paymentMethod);
                },
                child: CustomListTile(
                  leading: SvgPicture.asset(AppIcons.banknoteIcon),
                  title: 'Payment Method',
                  trailing: SvgPicture.asset(AppIcons.arrowIcon),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.favourite);
                },
                child: CustomListTile(
                  leading: SvgPicture.asset(AppIcons.heartIcon),
                  title: 'Favorite',
                  trailing: SvgPicture.asset(AppIcons.arrowIcon),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.setting);
                },
                child: CustomListTile(
                  leading: SvgPicture.asset(AppIcons.settingIcon),
                  title: 'Settings',
                  trailing: SvgPicture.asset(AppIcons.arrowIcon),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.fAQsViewRouteName);
                },
                child: CustomListTile(
                  leading: SvgPicture.asset(AppIcons.lockIcon),
                  title: 'FAQs',
                  trailing: SvgPicture.asset(AppIcons.arrowIcon),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.privacyPolicyRouteName,
                  );
                },
                child: CustomListTile(
                  leading: SvgPicture.asset(AppIcons.chatIcon),
                  title: 'Privacy Policy',
                  trailing: SvgPicture.asset(AppIcons.arrowIcon),
                ),
              ),

              InkWell(
                onTap: () {
                  _showLogoutDialog(context);
                },
                child: CustomListTile(
                  leading: SvgPicture.asset(AppIcons.logoutIcon),
                  title: 'Log Out',
                  titleColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void CustomShowDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'LogOut',
              style: AppStyles.georgia400Regular(context: context, font: 24.0),
            ),
            SizedBox(height: 4),
            Text(
              'Are you sure you want to log out?',
              style: AppStyles.fontMontserratRegularGreyColor(
                context,
                size: 16,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'cancel',
                style: AppStyles.fontMontserratRegularGreyColor(
                  context,
                  size: 14,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextButton(
              onPressed: () {
                // setState(() {
                // _logout();
                // });
              },
              child: Text(
                'Yes,logout',
                style: AppStyles.montserrat400Regular(
                  context: (context),
                  font: 14.0,
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
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
              'LogOut',
              style: AppStyles.georgia400Regular(context: context, font: 24.0),
            ),

            SizedBox(height: 8),
            Divider(thickness: 1),
          ],
        ),
        content: Text(
          "Are you sure you want to log out?",
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
              child: Text("Cancel",style: AppStyles.fontMontserratRegularGreyColor(
                  context,
                  size: 14,),
            ),
          ),),

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
              child: Text("Yes,Logout", style: AppStyles.montserrat400Regular(
                  context: (context),
                  font: 14.0,color: Colors.white),),
            ),
          ),
        ],
      );
    },
  );
}
