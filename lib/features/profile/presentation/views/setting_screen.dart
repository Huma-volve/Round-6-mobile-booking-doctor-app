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

        title: Text('Settings',style: AppStyles.georgia400Regular(context: context,font: 24.0),),
        backgroundColor: Colors.white,
      ),
       
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),

        child: Container(
          
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              margin: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(8),
              ),
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
          const SizedBox(height:8),
              CustomListTile(
                  fontSize: 16.0,
                leading: SvgPicture.asset(AppIcons.deleteIcon),
                title: 'Delete Account',
               
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}