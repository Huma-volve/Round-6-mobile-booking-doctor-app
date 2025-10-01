// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:booking_doctor/features/home/domain/entities/doctor_model.dart';
import 'package:booking_doctor/features/home/domain/repo/home_repo.dart';

class GetDoctorNearYouUseCase {
  final HomeRepo homeRepo;
  GetDoctorNearYouUseCase({required this.homeRepo});

  Future<List<DoctorEntity>> execute() async {
    return homeRepo.getDoctorsNearYou();
  }
}
