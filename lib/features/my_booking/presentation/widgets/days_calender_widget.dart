import 'package:booking_doctor/features/my_booking/presentation/widgets/calender_container.dart';
import 'package:flutter/material.dart';

class DaysCalenderWidget extends StatefulWidget {
  const DaysCalenderWidget({super.key});

  @override
  State<DaysCalenderWidget> createState() => _DaysCalenderWidgetState();
}

class _DaysCalenderWidgetState extends State<DaysCalenderWidget> {
  late int selectedIndex;
  late List<DateTime> days;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    days = List.generate(
      7 + 30,
      (index) => DateTime.now()
          .subtract(const Duration(days: 7))
          .add(Duration(days: index)),
    );

    selectedIndex = days.indexWhere(
      (day) =>
          day.day == DateTime.now().day &&
          day.month == DateTime.now().month &&
          day.year == DateTime.now().year,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (selectedIndex != -1) {
        _scrollController.animateTo(
          selectedIndex * 70,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: days.length,
        itemBuilder: (context, index) {
          DateTime day = days[index];
          bool isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: CalenderContainer(isSelected: isSelected, day: day),
          );
        },
      ),
    );
  }
}
