import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/features/notification/domain/entities/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({
    Key? key,
    this.onTap,
    required this.notificationModel,
  }) : super(key: key);
  final void Function()? onTap;
  final NotificationModel notificationModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(0xffE8EFF8),
          child: SvgPicture.asset(
            notificationModel.imageUrl ?? AppIcons.upcomingIcon,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(notificationModel.title), Text("4h")],
        ),
        subtitle: Text(notificationModel.description, maxLines: 1),
      ),
    );
  }
}
