import 'package:booking_doctor/features/notification/data/source/fake_data.dart';
import 'package:booking_doctor/features/notification/presentation/view/widgets/notification_card_widget.dart';
import 'package:flutter/material.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => NotificationCardWidget(
        notificationModel: fakeData[index],
        onTap: () {
          print(index);
        },
      ),
      itemCount: fakeData.length,
    );
  }
}
