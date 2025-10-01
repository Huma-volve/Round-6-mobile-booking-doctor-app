import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';

class ReviewCard extends StatelessWidget {
  final String name;
  final String time;
  final String reviewText;
  final String imagePath;
  final double rating;

  const ReviewCard({
    super.key,
    required this.name,
    required this.time,
    required this.reviewText,
    required this.imagePath,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(width * .02),
      margin: EdgeInsets.only(bottom: height*.022),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.bioColor, width: .07),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(imagePath),
                radius: 25,
              ),
              SizedBox(width: width * .02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: AppStyles.reviewsNameStyle),
                  Text(time, style: AppStyles.time1Style),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      color: AppColors.yellow.withOpacity(.1),
                      width: width * .14,
                      height: height * .03,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: AppColors.yellow, size: 18),
                          Text(rating.toString(),
                              style: AppStyles.containerRateStyle),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: height * .01),
          Text(reviewText, style: AppStyles.time1Style),
        ],
      ),
    );
  }
}
