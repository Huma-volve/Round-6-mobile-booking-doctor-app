import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/core/widgets/custom_text_form_field.dart';
import 'package:booking_doctor/features/review/presentation/widgets/custom_button.dart';
import 'package:booking_doctor/features/review/presentation/widgets/custom_star.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AddReviewView extends StatefulWidget {
  const AddReviewView({super.key});

  @override
  State<AddReviewView> createState() => _AddReviewViewState();
}

class _AddReviewViewState extends State<AddReviewView> {
  double _rating = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        surfaceTintColor: AppColors.whiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new, size: 18),
        ),
        title: Text(
          'Review',
          style: AppStyles.font24Regular(
            context,
          ).copyWith(color: AppColors.secondaryTextColor),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 33, bottom: 20),
                child: Text(
                  'Your Rate',
                  style: AppStyles.font24Regular(
                    context,
                  ).copyWith(color: AppColors.secondaryTextColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 56),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingBar.builder(
                      initialRating: _rating,
                      minRating: 1,
                      allowHalfRating: true,
                      itemSize: 32,
                      unratedColor: AppColors.unratedColor,
                      itemBuilder: (context, index) {
                        return CustomPaint(
                          size: const Size(40, 40),
                          painter: CustomStar(
                            color: index < _rating
                                ? AppColors.yellowColor
                                : AppColors.unratedColor,
                          ),
                        );
                      },
                      onRatingUpdate: (rating) {
                        setState(() {
                          _rating = rating;
                        });
                      },
                    ),

                    Text(
                      '${_rating.toDouble()}/5',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Your review',
                style: AppStyles.font24Regular(
                  context,
                ).copyWith(color: AppColors.secondaryTextColor, fontSize: 20),
              ),
              const SizedBox(height: 21),
              CustomTextFormFeild(
                hintStyle: AppStyles.font16Meduim(
                  context,
                ).copyWith(fontSize: 14, color: AppColors.darkGreyColor),
                hint: 'Write your review',
                border: 15,
                minLines: 7,
                maxLines: null,
                enabledBorderColor: AppColors.greyTextColor,
                focusedBorderColor: AppColors.greyTextColor,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height <= 900
                    ? MediaQuery.of(context).size.height * 0.1
                    : MediaQuery.of(context).size.height * 0.2,
              ),

              CustomButton(
                padding: const EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                onTap: () {
                  _showReviewPopup(context);
                },
                text: 'Send your review',
                color: AppColors.buttonBackgroundColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showReviewPopup(BuildContext context) {
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
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(AppImages.starImage),

                Text(
                  'Thanks for your review',
                  style: AppStyles.font24Regular(
                    context,
                  ).copyWith(color: AppColors.secondaryTextColor),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
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
                      'Done',
                      style: AppStyles.font16Meduim(
                        context,
                      ).copyWith(color: AppColors.whiteColor),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    //دي محتاجة تتغير Navigator.pushReplacementNamed(context, "/home");
                  },
                  child: Text(
                    'Back to Home',
                    style: AppStyles.font24Regular(
                      context,
                    ).copyWith(color: AppColors.grey280Color, fontSize: 14),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }
}
