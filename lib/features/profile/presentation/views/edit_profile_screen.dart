import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/profile/presentation/widgets/custom_circular_image.dart';
import 'package:booking_doctor/features/profile/presentation/widgets/custom_drop_down_field.dart';
import 'package:booking_doctor/features/profile/presentation/widgets/custom_edit_profile_form.dart';
import 'package:booking_doctor/features/profile/presentation/widgets/custom_intel_phone_field.dart';
import 'package:booking_doctor/features/profile/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  List<int> days = List.generate(31, (i) => i + 1);
  List<int> months = List.generate(12, (i) => i + 1);
  List<int> years = List.generate(100, (i) => DateTime.now().year - i);

  int? selectedDay;
  int? selectedMonth;
  int? selectedYear;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomCircularImage(),
              Text(
                'Seif Mohamed',
                style: AppStyles.georgia400Regular(context: context),
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppIcons.locationIcon),
                    const SizedBox(width: 8),
                    Text(
                      '129, El-Nasr Street, Cairo',
                      style: AppStyles.montserrat400Thin(context: context),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 64),
              const CustomEditProfileField(
                title: 'Email',
                icon: AppIcons.emailInputIcon,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              const CustomEditProfileField(
                title: 'Full Name',
                icon: AppIcons.nameInputIcon,
              ),
              const SizedBox(height: 16),
              const CustomIntelPhoneField(),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerLeft,
                child: CustomTextField(title: 'Select your birthday'),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: CustomDropDownField(
                      calender: days,
                      selectedValue: selectedDay,
                      title: '12',
                    ),
                  ),
                  const SizedBox(width: 8),

                  Expanded(
                    child: CustomDropDownField(
                      calender: months,
                      title: 'july',
                      selectedValue: selectedMonth,
                    ),
                  ),
                  const SizedBox(width: 8),

                  Expanded(
                    child: CustomDropDownField(
                      calender: years,
                      title: '2024',
                      selectedValue: selectedYear,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 48.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.navigatorBottomColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                      //foregroundColor: AppColors.whiteColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Edit Profile',
                      style: AppStyles.montserrat400Regular(
                        context: context,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
