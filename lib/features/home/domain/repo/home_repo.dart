import 'package:booking_doctor/features/home/domain/entities/doctor_model.dart';

abstract class HomeRepo {
  getSpecialties();
  Future<List<DoctorEntity>> getDoctorsNearYou();
}
