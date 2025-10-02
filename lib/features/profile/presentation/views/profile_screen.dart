import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/profile/presentation/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isNotification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
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
                              'Seif Mohamed',
                              style: AppStyles.georgia400Regular(
                                context: context,
                              ),
                            ),
                            const SizedBox(height: 4),

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

              CustomListTile(
                leading: SvgPicture.asset(AppIcons.logoutIcon),
                title: 'Log Out',
                titleColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
