import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/booking_appointment/presentation/views/doctor_appointment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_review_card.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});

  Widget buildDetailsInfo([
    BuildContext? context,
    String? rating,
    double? numPatient,
    String? text,
    Widget? widget,
  ]) {
    double width = MediaQuery.of(context!).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        widget!,
        SizedBox(height: height * .01),
        Text(rating.toString(), style: AppStyles.detailsStyle),
        SizedBox(height: height * .01),
        Text(text!, style: AppStyles.textUnderReviewStyle),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: Icon(CupertinoIcons.back, color: AppColors.black),
        title: Text("Doctor Details", style: AppStyles.appBarTitleStyle),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.heart, color: AppColors.black, size: 24),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * .01),
                  doctorDefinition(context),
                  SizedBox(height: height * .025),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildDetailsInfo(
                        context,
                        "2000+",
                        1000,
                        "patients",
                        Icon(
                          CupertinoIcons.person_2_fill,
                          color: AppColors.black,
                        ),
                      ),
                      buildDetailsInfo(
                        context,
                        "10+",
                        1000,
                        "experience",
                        SizedBox(
                          width: width * .1,
                          height: height * .04,
                          child: Image.asset(AppImages.medal),
                        ),
                      ),
                      buildDetailsInfo(
                        context,
                        "4.8",
                        1000,
                        "rating",
                        Icon(CupertinoIcons.star_fill, color: AppColors.black),
                      ),
                      buildDetailsInfo(
                        context,
                        "1,872",
                        1000,
                        "reviews",
                        Icon(
                          CupertinoIcons.text_bubble_fill,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * .02),
                  Text("About Me", style: AppStyles.nameStyle),
                  SizedBox(height: height * .01),
                  Text(
                    "Dr. Jessica Turner, a board-certified Pulmonologist with over 8 years of experience in diagnosing and treating a wide range of respiratory and ",
                    style: AppStyles.bioStyle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: height * .02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Reviews and Rating", style: AppStyles.nameStyle),
                      Row(
                        children: [
                          Icon(
                            Icons.mode_edit,
                            color: AppColors.blueAddReview,
                            size: 15,
                          ),
                          Text("add review", style: AppStyles.addReviewStyle),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height * .02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("4.5/5", style: AppStyles.rateStyle),
                      Column(
                        children: [
                          Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Icon(Icons.star, color: AppColors.yellow),
                            ],
                          ),
                          Text("1250+ Reviews", style: AppStyles.montMedium),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height * .02),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ReviewCard(
                            name: "Nabil Reyna",
                            time: "30 min",
                            reviewText:
                                "Excellent service! Dr. Jessica Turner was attentive and thorough. The clinic was clean, and the staff were friendly. Highly recommend for in-person care!",
                            imagePath: AppImages.myPhoto,
                            rating: 4.5,
                          ),
                          ReviewCard(
                            name: "Nabil Reyna",
                            time: "30 min",
                            reviewText:
                                "Excellent service! Dr. Jessica Turner was attentive and thorough. The clinic was clean, and the staff were friendly. Highly recommend for in-person care!",
                            imagePath: AppImages.myPhoto,
                            rating: 4.5,
                          ),
                          ReviewCard(
                            name: "Nabil Reyna",
                            time: "30 min",
                            reviewText:
                                "Excellent service! Dr. Jessica Turner was attentive and thorough. The clinic was clean, and the staff were friendly. Highly recommend for in-person care!",
                            imagePath: AppImages.myPhoto,
                            rating: 4.5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar:
      Container(
        height: height*.13,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 1,
              offset: Offset(1, 1),
              color: AppColors.bioColor.withOpacity(.2)
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Price',
                  style: AppStyles.bottomPriceStyle
                ),
                Text(
                  '/hour',
                  style: AppStyles.time1Style,
                ),
                Spacer(),
                Text(
                  '350\$',
                  style: AppStyles.montMedium.copyWith(color: AppColors.red)
                ),
              ],
            ),
            SizedBox(height: height*.01,),
            SizedBox(
              width: double.infinity,
              height: height*.06,
              child: ElevatedButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorAppointmentScreen()));

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.blueBottom,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Continue to Pay',
                  style: AppStyles.montMedium.copyWith(color: AppColors.white)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget doctorDefinition(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Row(
    children: [
      SizedBox(
        child: Stack(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(AppImages.myPhoto),
              radius: 50,
            ),
            Positioned(
              bottom: 5,
              right: .5,
              child: Image(image: AssetImage(AppImages.vector)),
            ),
          ],
        ),
      ),
      SizedBox(width: width * .05),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Dr. Jessica Turner", style: AppStyles.nameStyle),
          SizedBox(height: height * .003),
          Text("Pulmonologist", style: AppStyles.bioStyle),
          SizedBox(height: height * .01),
          Row(
            children: [
              Image(image: AssetImage(AppImages.icon)),
              Text("129,El-Nasr Street, Cairo ", style: AppStyles.bioStyle),
            ],
          ),
        ],
      ),
    ],
  );
}
