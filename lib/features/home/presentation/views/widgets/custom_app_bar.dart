import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_strings.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/core/helpers/size_config.dart';
import 'package:booking_doctor/features/home/presentation/views/widgets/custom_appbar_right_bottons.dart';
import 'package:booking_doctor/features/home/presentation/views/widgets/dashed_button.dart';
import 'package:booking_doctor/features/home/presentation/views/widgets/location_row.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage(AppImages.homeImage)),
            SizedBox(width: SizeConfig.blockSizeHorizontal * 2),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Column(
                      children: [Text("Your location"), Divider(height: 1)],
                    ),

                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LocationRow(
                          colorText: AppColors.primaryColor,

                          fontSize: 14,
                        ),
                        SizedBox(height: 16),
                        DashedButton(),
                      ],
                    ),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.welcomeBack + AppStrings.wessam,
                    style: AppStyles.fontGeorgiaRegularSecondaryColor(
                      context,
                      size: 14,
                    ).copyWith(color: AppColors.secondaryColor),
                  ),
                  SizedBox(height: SizeConfig.safeBlockHorizontal * 2),
                  LocationRow(),
                ],
              ),
            ),
            Spacer(),
            CustomAppbarRightBottons(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(120);
}
