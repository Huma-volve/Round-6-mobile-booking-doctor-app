import 'package:booking_doctor/features/notification/presentation/view/widgets/notification_body.dart';
import 'package:flutter/material.dart';
import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:booking_doctor/core/constants/app_strings.dart';
import 'package:booking_doctor/core/widgets/custom_app_bar.dart';
import 'package:booking_doctor/core/widgets/empty_body_widget.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});
  final bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),

      body: isEmpty
          ? EmptyBodyWidget(
              imagePath: AppImages.emptyNotificationImage,
              mainTitle: AppStrings.nothingToDisplayHere,
              subTitle: AppStrings.wellNotify,
            )
          : NotificationBody(),
    );
  }
}
