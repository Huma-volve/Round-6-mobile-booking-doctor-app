import 'package:booking_doctor/features/favourite/data/source/api_favourite_source.dart';
import 'package:booking_doctor/features/favourite/domain/entities/favourite_model_gendart';
import 'package:booking_doctor/features/favourite/domain/entities/favourite_hospital.dart';
import 'package:booking_doctor/features/favourite/domain/repo/favourite_repo.dart';

class FavouriteRepoImpl extends FavouriteRepo {
  final ApiFavouriteSource apiFavouriteSource;
  FavouriteRepoImpl({required this.apiFavouriteSource});
  @override
  Future<List<FavouriteModelGen>> getFavouriteDoctors() async {
    return await apiFavouriteSource.getFavouriteDoctors();
  }

  @override
  Future<List<FavouriteHospital>> getFavouriteHospitals() async {
    return await apiFavouriteSource.getFavouriteHospitals();
  }
}
