import 'package:booking_doctor/core/widgets/doctor_card_widget/doctor_card_widget.dart';
import 'package:booking_doctor/features/favourite/domain/entities/favourite_model_gendart';
import 'package:booking_doctor/features/home/data/source/fake_source.dart';
import 'package:booking_doctor/features/home/domain/entities/doctor_model.dart';
import 'package:booking_doctor/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteListWidget extends StatelessWidget {
  FavouriteListWidget({super.key, required this.doctorsNearYou});
  List<DoctorEntity> doctorsNearYou = [];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: doctorsNearYou.length,
      itemBuilder: (context, index) =>
          DoctorCardWidget(doctorModel: doctorsNearYou[index]),
      separatorBuilder: (context, index) =>
          SizedBox(height: MediaQuery.sizeOf(context).height * .02),
    );
  }
}
