import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_strings.dart';
import 'package:booking_doctor/core/widgets/empty_body_widget.dart';
import 'package:booking_doctor/core/widgets/custom_app_bar.dart';
import 'package:booking_doctor/features/favourite/presentation/views/widgets/favourite_filled_body.dart';
import 'package:flutter/material.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});
  final bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: AppStrings.yourFavorite),
      body: isEmpty
          ? const EmptyBodyWidget(
              imagePath: AppImages.defaultFaverouitImage,
              mainTitle: AppStrings.yourFavorite1,
              subTitle: AppStrings.addYourFavoriteToFindItEasily,
            )
          : const FavouriteFilledBody(),
    );
  }
}
