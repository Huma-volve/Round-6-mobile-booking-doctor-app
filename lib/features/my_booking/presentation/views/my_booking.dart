import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/my_booking/presentation/widgets/days_calender_widget.dart';
import 'package:booking_doctor/features/my_booking/presentation/widgets/doctor_booking_container_widget.dart';
import 'package:flutter/material.dart';

class MyBookingView extends StatefulWidget {
  const MyBookingView({super.key});

  @override
  State<MyBookingView> createState() => _MyBookingViewState();
}

class _MyBookingViewState extends State<MyBookingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        surfaceTintColor: AppColors.whiteColor,
        automaticallyImplyLeading: false,
        title: Text(
          'My Booking',
          style: AppStyles.font24Regular(
            context,
          ).copyWith(color: AppColors.secondaryTextColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DaysCalenderWidget(),
            DoctorBookingContainerWidget(
              onTap: () {
                _showCancelPopup(context);
              },
              date: 'Sunday, July 21 - 11:00 Am',
              doctorName: 'Jennifer Miller',
              doctorSpecialty: 'Psychiatrist',
              states: 'Upcoming',
              image: AppImages.doctorImage,
              location: '129,El-Nasr Street, Cairo, Egypt ',
              button1Text: 'Cancel',
              button2Text: 'Reschedule',
              textColor: AppColors.greyTextColor,
            ),
            DoctorBookingContainerWidget(
              onTap: () {},
              date: 'Sunday, July 21 - 11:00 Am',
              doctorName: 'Jennifer Miller',
              doctorSpecialty: 'Psychiatrist',
              states: 'Compeleted',
              image: AppImages.doctorImage,
              location: '129,El-Nasr Street, Cairo, Egypt ',
              button1Text: 'Book again',
              button2Text: 'Feedback',
            ),
            DoctorBookingContainerWidget(
              onTap: () {},
              date: 'Sunday, July 21 - 11:00 Am',
              doctorName: 'Jennifer Miller',
              doctorSpecialty: 'Psychiatrist',
              states: 'Canceled',
              image: AppImages.doctorImage,
              location: '129,El-Nasr Street, Cairo, Egypt ',
              button1Text: 'Book again',
              button2Text: 'Support',
            ),
          ],
        ),
      ),
    );
  }

  void _showCancelPopup(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(AppImages.canceledImage),
                const SizedBox(height: 32),
                Text(
                  'Warning!',
                  style: AppStyles.font20SemiBold(
                    context,
                  ).copyWith(color: AppColors.orangeColor),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Cancellation must be made at least 24 hours in advance to receive a\n refund',
                  style: AppStyles.font24Regular(
                    context,
                  ).copyWith(color: AppColors.grey280Color, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                Text(
                  'Are you sure?',
                  style: AppStyles.font24Regular(
                    context,
                  ).copyWith(color: AppColors.grey280Color, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.58,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondaryTextColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'yes,Cancel',
                      style: AppStyles.font16Meduim(
                        context,
                      ).copyWith(color: AppColors.whiteColor),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        );
      },
    );
  }
}
