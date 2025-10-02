import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class EmptyBodyWidget extends StatelessWidget {
  const EmptyBodyWidget({
    required this.imagePath,
    required this.mainTitle,
    required this.subTitle,
    super.key,
  });
  final String imagePath;
  final String mainTitle;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Align(
      child: Column(
        children: [
          SizedBox(height: size.height * .2),
          Container(
            height: size.height * .2,
            width: size.width * .4,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imagePath)),
            ),
          ),
          Text(
            mainTitle,
            style: AppStyles.fontGeorgiaRegularSecondaryColor(
              context,
              size: 24,
            ),
          ),
          Text(
            subTitle,
            style: AppStyles.fontMontserratRegularGreyColor(context, size: 16),
          ),
        ],
      ),
    );
  }
}
