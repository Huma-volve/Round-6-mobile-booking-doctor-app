import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/features/home/domain/entities/doctor_model.dart';
import 'package:booking_doctor/core/widgets/doctor_card_widget/doctor_image_widget.dart';
import 'package:booking_doctor/core/widgets/doctor_card_widget/name_location_rates_dates_column.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class DoctorCardWidget extends StatelessWidget {
  const DoctorCardWidget({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      width: double.infinity,
      height: size.height * .12,
      padding: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greySemiDarkColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          DoctorImageWidget(ImageUrl: doctorModel.imageUrl),
          SizedBox(width: size.width * .02),
          NameLocationRatesDatesColumn(
            size: size,
            title: doctorModel.title,
            location: doctorModel.location,
            rate: doctorModel.rateNum,
            date: doctorModel.date,
          ),
          Spacer(),
          SvgPicture.asset(AppIcons.iconsFilledHeartIcon),
        ],
      ),
    );
  }
}
