import 'package:booking_doctor/features/favourite/domain/entities/favourite_model_gendart';
import 'package:booking_doctor/features/favourite/domain/entities/favourite_hospital.dart';

abstract class FavouriteRepo {
  Future<List<FavouriteModelGen>> getFavouriteDoctors();
  Future<List<FavouriteHospital>> getFavouriteHospitals();
}
