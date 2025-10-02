import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class DoctorImageWidget extends StatelessWidget {
  const DoctorImageWidget({super.key, this.ImageUrl});
  final String? ImageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 89 / 86,
      child: ClipRRect(
        borderRadius: const BorderRadiusGeometry.only(
          topLeft: Radius.circular(14),
          bottomLeft: Radius.circular(14),
        ),
        child: Image.asset(ImageUrl ?? AppImages.fakeImage, fit: BoxFit.cover),
      ),
    );
  }
}
