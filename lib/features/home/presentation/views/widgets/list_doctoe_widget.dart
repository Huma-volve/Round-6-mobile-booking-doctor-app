import 'package:booking_doctor/core/widgets/doctor_card_widget/doctor_card_widget.dart';
import 'package:booking_doctor/features/home/data/source/fake_source.dart';
import 'package:flutter/material.dart';

SliverList listDoctorsWidget() {
  return SliverList.separated(
    itemCount: fakeData.length,
    itemBuilder: (context, index) =>
        DoctorCardWidget(doctorModel: fakeData[index]),
    separatorBuilder: (context, index) =>
        SizedBox(height: MediaQuery.sizeOf(context).height * .02),
  );
}
