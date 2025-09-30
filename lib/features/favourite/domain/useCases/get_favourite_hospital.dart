import 'package:booking_doctor/features/favourite/domain/entities/favourite_hospital.dart';
import 'package:booking_doctor/features/favourite/domain/repo/favourite_repo.dart';

class GetFavouriteHospital {
  final FavouriteRepo favouriteRepo;
  GetFavouriteHospital({required this.favouriteRepo});
  Future<List<FavouriteHospital>> execute() async {
    return await favouriteRepo.getFavouriteHospitals();
  }
}
