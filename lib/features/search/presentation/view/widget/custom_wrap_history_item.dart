import 'package:booking_doctor/features/search/presentation/view/widget/custom_history_item.dart';
import 'package:flutter/material.dart';

class CustomWrapHistoryItem extends StatelessWidget {
  const CustomWrapHistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 16,
      children: List.generate(
        historyList.length,
        (index) => CustomHistoryItem(title: historyList[index]),
      ),
    );
  }
}

List<String> historyList = [
  'Psychiatrist',
  'Robert Johnson',
  'Helwan',
  'Heart doctor',
];
