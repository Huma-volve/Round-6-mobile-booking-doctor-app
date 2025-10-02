import 'package:booking_doctor/features/home/presentation/cubit/home_cubit.dart';
import 'package:booking_doctor/features/home/presentation/cubit/home_state.dart';
import 'package:booking_doctor/features/home/presentation/views/widgets/category_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfCategory extends StatefulWidget {
  ListOfCategory({super.key});

  @override
  State<ListOfCategory> createState() => _ListOfCategoryState();
}

class _ListOfCategoryState extends State<ListOfCategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .06,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
<<<<<<< HEAD
        itemBuilder: (context, index) => const CategoryItemWidget(),
=======
        itemBuilder: (context, index) => BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            int pos = 0;
            if (state is HomeLoaded) {
              pos = state.posInCate;
            }
            return CategoryItemWidget(
              onTap: () {
                context.read<HomeCubit>().changeInCategory(index);
              },
              isSelected: pos == index,
            );
          },
        ),
>>>>>>> SearchAndMapViewLogic
      ),
    );
  }
}
