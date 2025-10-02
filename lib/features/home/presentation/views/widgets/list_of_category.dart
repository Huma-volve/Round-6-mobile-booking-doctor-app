import 'package:booking_doctor/features/home/presentation/views/widgets/category_item_widget.dart';
import 'package:flutter/material.dart';

class ListOfCategory extends StatelessWidget {
  const ListOfCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .06,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const CategoryItemWidget(),
      ),
    );
  }
}
