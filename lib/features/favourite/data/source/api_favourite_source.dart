import 'package:booking_doctor/features/favourite/domain/entities/favourite_model_gendart';
import 'package:booking_doctor/features/favourite/domain/entities/favourite_hospital.dart';

abstract class ApiFavouriteSource {
  Future<List<FavouriteModelGen>> getFavouriteDoctors();
  Future<List<FavouriteHospital>> getFavouriteHospitals();
  Future<List<FavouriteHospital>> removeFavourite();
  Future<List<FavouriteHospital>> addFavourite();
}

class FakeApiFavouriteSourceImpl extends ApiFavouriteSource {
  @override
  Future<List<FavouriteModelGen>> getFavouriteDoctors() async {
    return [
      FavouriteModelGen(
        title: "Robert Johnson",
        location: "Orthopedic | El-Nasr Hospital",
        rateNum: "4.8",
        date: "9:30am - 8:00pm",
      ),
      FavouriteModelGen(
        title: "Robert Johnson",
        location: "Orthopedic | El-Nasr Hospital",
        rateNum: "4.8",
        date: "9:30am - 8:00pm",
      ),
      FavouriteModelGen(
        title: "Robert Johnson",
        location: "Orthopedic | El-Nasr Hospital",
        rateNum: "4.8",
        date: "9:30am - 8:00pm",
      ),
      FavouriteModelGen(
        title: "Robert Johnson",
        location: "Orthopedic | El-Nasr Hospital",
        rateNum: "4.8",
        date: "9:30am - 8:00pm",
      ),
    ];
  }

  @override
  Future<List<FavouriteHospital>> getFavouriteHospitals() async {
    return [
      FavouriteHospital(
        title: "Robert Johnson",
        location: "Orthopedic | El-Nasr Hospital",
        rateNum: "4.8",
        date: "9:30am - 8:00pm",
      ),
      FavouriteHospital(
        title: "Robert Johnson",
        location: "Orthopedic | El-Nasr Hospital",
        rateNum: "4.8",
        date: "9:30am - 8:00pm",
      ),
      FavouriteHospital(
        title: "Robert Johnson",
        location: "Orthopedic | El-Nasr Hospital",
        rateNum: "4.8",
        date: "9:30am - 8:00pm",
      ),
      FavouriteHospital(
        title: "Robert Johnson",
        location: "Orthopedic | El-Nasr Hospital",
        rateNum: "4.8",
        date: "9:30am - 8:00pm",
      ),
    ];
  }

  @override
  Future<List<FavouriteHospital>> addFavourite() {
    // TODO: implement addFavourite
    throw UnimplementedError();
  }

  @override
  Future<List<FavouriteHospital>> removeFavourite() {
    // TODO: implement removeFavourite
    throw UnimplementedError();
  }
}
