// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:booking_doctor/features/favourite/domain/entities/favourite_model_gendart';
import 'package:booking_doctor/features/favourite/domain/repo/favourite_repo.dart';

class GetFavouriteDoctors {
  final FavouriteRepo favouriteRepo;
  GetFavouriteDoctors({required this.favouriteRepo});
  Future<List<FavouriteModelGen>> execute() async {
    return await favouriteRepo.getFavouriteDoctors();
  }
}
