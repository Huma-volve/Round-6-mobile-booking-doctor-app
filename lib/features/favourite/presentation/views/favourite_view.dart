import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_strings.dart';
import 'package:booking_doctor/core/widgets/empty_body_widget.dart';
import 'package:booking_doctor/core/widgets/custom_app_bar.dart';
import 'package:booking_doctor/features/favourite/presentation/cubit/favourite_cubit.dart';
import 'package:booking_doctor/features/favourite/presentation/views/widgets/favourite_filled_body.dart';
import 'package:booking_doctor/features/home/presentation/cubit/home_cubit.dart';
import 'package:booking_doctor/features/home/presentation/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: AppStrings.yourFavorite),
<<<<<<< HEAD
      body: isEmpty
          ? const EmptyBodyWidget(
              imagePath: AppImages.defaultFaverouitImage,
              mainTitle: AppStrings.yourFavorite1,
              subTitle: AppStrings.addYourFavoriteToFindItEasily,
            )
          : const FavouriteFilledBody(),
=======
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeLoaded) {
            final favourites = state.doctors
                .where((d) => d.isFavourite)
                .toList();

            if (favourites.isEmpty) {
              return EmptyBodyWidget(
                imagePath: AppImages.defaultFaverouitImage,
                mainTitle: AppStrings.yourFavorite1,
                subTitle: AppStrings.addYourFavoriteToFindItEasily,
              );
            }

            return FavouriteFilledBody(doctorsNearYou: favourites);
          }

          if (state is HomeLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return EmptyBodyWidget(
            imagePath: AppImages.defaultFaverouitImage,
            mainTitle: AppStrings.yourFavorite1,
            subTitle: AppStrings.addYourFavoriteToFindItEasily,
          );
        },
      ),
>>>>>>> SearchAndMapViewLogic
    );
  }
}
