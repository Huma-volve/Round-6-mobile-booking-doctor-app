import 'package:booking_doctor/features/favourite/domain/entitie/favorite_hospital.dart';
import 'package:booking_doctor/features/favourite/domain/entitie/favourite_model_gen.dart';

abstract class FavouriteRepo {
  Future<List<FavouriteModelGen>> getFavouriteDoctors();
  Future<List<FavouriteHospital>> getFavouriteHospitals();
}
