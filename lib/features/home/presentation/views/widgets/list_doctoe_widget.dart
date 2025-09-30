import 'package:booking_doctor/core/widgets/doctor_card_widget/doctor_card_widget.dart';
import 'package:booking_doctor/features/home/data/source/fake_source.dart';
import 'package:booking_doctor/features/home/domain/entities/doctor_model.dart';
import 'package:booking_doctor/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfDoctors extends StatefulWidget {
  ListOfDoctors({super.key, required this.doctors});
  List<DoctorEntity> doctors;

  @override
  State<ListOfDoctors> createState() => _ListOfDoctorsState();
}

class _ListOfDoctorsState extends State<ListOfDoctors> {
  bool isFavourite = false;
  int pos = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: widget.doctors.length,
      itemBuilder: (context, index) => DoctorCardWidget(
        doctorModel: widget.doctors[index],
        onTap: () {
          context.read<HomeCubit>().addInFavourite(widget.doctors[index]);
        },
        isFaverote: widget.doctors[index].isFavourite,
      ),
      separatorBuilder: (context, index) =>
          SizedBox(height: MediaQuery.sizeOf(context).height * .02),
    );
  }
}
