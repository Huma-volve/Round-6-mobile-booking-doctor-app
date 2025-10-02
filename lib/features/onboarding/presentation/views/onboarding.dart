import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/onboarding/presentation/widgets/custom_animated.dart';
import 'package:booking_doctor/features/onboarding/presentation/widgets/onboarding_model.dart';
import 'package:booking_doctor/features/review/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});
  static const String routeName = 'OnBoardingScreen';
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<OnBoardingModel> onboardingList = [
    OnBoardingModel(
      image: AppImages.onboardingFirstImage,
      title: 'Book Your Appointment Easily',
      description:
          'Choose your preferred doctor, pick a suitable time, and confirm your visit in just a few taps. No calls, no waiting—just simple and fast booking.',
    ),
    OnBoardingModel(
      image: AppImages.onboardingSecondImage,
      title: 'Find Doctors Around You',
      description:
          'Quickly discover trusted doctors near your area. Whether you need a general checkup or a specialist, we connect you with nearby clinics for fast and convenient care.',
    ),
  ];
  final PageController controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 260,
              child: PageView.builder(
                controller: controller,
                itemCount: onboardingList.length,
                onPageChanged: (value) {
                  index = value;
                  setState(() {});
                },
                itemBuilder: (context, index) {
                  return CustomAnimatedWidget(
                    index: index,
                    delay: index,
                    child: Image.asset(onboardingList[index].image),
                  );
                },
              ),
            ),
            const SizedBox(height: 50),

            CustomAnimatedWidget(
              index: index,
              delay: (index + 1) * 100,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      onboardingList[index].title,
                      style: AppStyles.font24Regular(
                        context,
                      ).copyWith(color: AppColors.secondaryTextColor),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      onboardingList[index].description,

                      textAlign: TextAlign.center,
                      style: AppStyles.font16Meduim(context).copyWith(
                        color: AppColors.darkGreyColor,
                        overflow: TextOverflow.fade,
                      ),
                    ),

                    const SizedBox(height: 24),
                    SmoothPageIndicator(
                      controller: controller,
                      count: onboardingList.length,
                      effect: const ExpandingDotsEffect(
                        spacing: 20.0,
                        radius: 15.0,
                        dotWidth: 10.0,
                        dotHeight: 10.0,
                        strokeWidth: 1.5,
                        activeDotColor: AppColors.buttonBackgroundColor,
                        dotColor: AppColors.unratedColor,
                      ),
                    ),
                    const SizedBox(height: 100),
                    CustomButton(
                      color: AppColors.buttonBackgroundColor,
                      textColor: AppColors.whiteColor,
                      padding: const EdgeInsets.all(12),
                      onTap: () {
                        if (index < onboardingList.length - 1) {
                          controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        } else {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.customBottomNav,
                          );
                        }
                      },
                      text: index < onboardingList.length - 1
                          ? 'Next'
                          : 'Get Start',
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
