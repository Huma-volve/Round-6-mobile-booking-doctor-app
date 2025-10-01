import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/features/favourite/presentation/views/favourite_view.dart';
import 'package:booking_doctor/features/home/presentation/cubit/home_cubit.dart';
import 'package:booking_doctor/features/home/presentation/views/widgets/custom_button_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppbarRightBottons extends StatelessWidget {
  const CustomAppbarRightBottons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomButtonWithIcon(
          iconPath: AppIcons.iconsEmptyHeartIcon,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                  value: context.read<HomeCubit>(),
                  child: FavouriteView(),
                ),
              ),
            );
          },
        ),
        SizedBox(width: 16),
        CustomButtonWithIcon(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.notification);
          },
        ),
      ],
    );
  }
}
