// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:booking_doctor/features/home/data/source/api_home_source.dart';
import 'package:booking_doctor/features/home/domain/entities/doctor_model.dart';
import 'package:booking_doctor/features/home/domain/repo/home_repo.dart';

class HomeRepoImple extends HomeRepo {
  final ApiHomeSource apiHomeSource;
  HomeRepoImple({required this.apiHomeSource});
  @override
  Future<List<DoctorEntity>> getDoctorsNearYou() async {
    return apiHomeSource.getDoctorsNearYou();
  }

  @override
  getSpecialties() {
    // TODO: implement getSpecialties
    throw UnimplementedError();
  }
}
