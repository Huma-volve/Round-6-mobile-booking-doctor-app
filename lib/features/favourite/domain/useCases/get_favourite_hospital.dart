import 'package:booking_doctor/features/favourite/domain/entities/favourte_doctor_model.dart';
import 'package:booking_doctor/features/favourite/domain/repo/favourite_repo.dart';

class GetFavouriteHospital {
  final FavouriteRepo favouriteRepo;
  GetFavouriteHospital({required this.favouriteRepo});
  List<FavourteDoctorModel> execute() {
    return favouriteRepo.getFavouriteHospital();
  }
}
