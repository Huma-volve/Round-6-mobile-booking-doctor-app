import 'package:booking_doctor/features/notification/data/source/fake_data.dart';
import 'package:booking_doctor/features/notification/presentation/view/widgets/notification_card_widget.dart';
import 'package:flutter/material.dart';

class NotificationBody extends StatefulWidget {
  NotificationBody({super.key});

  @override
  State<NotificationBody> createState() => _NotificationBodyState();
}

class _NotificationBodyState extends State<NotificationBody> {
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final notify = fakeData[index].title;
        return Dismissible(
          key: ValueKey(notify),
          // confirmDismiss: (direction) {},
          onDismissed: (direction) {
            fakeData.removeAt(index);
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("$notify is Delete")));
          },
          child: NotificationCardWidget(
            notificationModel: fakeData[index],
            onTap: () {
              print(index);
            },
          ),
        );
      },
      itemCount: fakeData.length,
      // itemCount: items.length,
      // itemBuilder: (context, index) {
      //   final item = items[index];
      //   return Dismissible(
      //     key: Key(item),

      //     onDismissed: (direction) {
      //       // Remove the item from the data source.
      //       setState(() {
      //         items.removeAt(index);
      //       });

      //       // Then show a snackbar.
      //       ScaffoldMessenger.of(
      //         context,
      //       ).showSnackBar(SnackBar(content: Text('$item dismissed')));
      //     },

      //     child: ListTile(title: Text(items[index])),
      //   );
      // },
    );
  }
}
