import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/features/home/domain/entities/doctor_model.dart';
import 'package:booking_doctor/core/widgets/doctor_card_widget/doctor_image_widget.dart';
import 'package:booking_doctor/core/widgets/doctor_card_widget/name_location_rates_dates_column.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class DoctorCardWidget extends StatelessWidget {
  DoctorCardWidget({
    required this.doctorModel,
    super.key,
    this.isFaverote = false,
    this.onTap,
  });
  final DoctorEntity doctorModel;
  bool isFaverote;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: double.infinity,
      height: size.height * .12,
      padding: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greySemiDarkColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          DoctorImageWidget(
            ImageUrl: doctorModel.imageUrl ?? AppImages.fakeImage,
          ),
          SizedBox(width: size.width * .02),
          NameLocationRatesDatesColumn(
            size: size,
            title: doctorModel.title,
            location: doctorModel.location,
            rate: doctorModel.rateNum,
            date: doctorModel.date,
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap,
            child: isFaverote
                ? SvgPicture.asset(AppIcons.iconsFilledHeartIcon)
                : SvgPicture.asset(AppIcons.iconsEmptyHeartIcon),
          ),
        ],
      ),
    );
  }
}
