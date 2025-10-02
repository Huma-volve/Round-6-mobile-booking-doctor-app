import 'package:booking_doctor/features/favourite/data/entitie/favorite_hospital.dart';
import 'package:booking_doctor/features/favourite/data/entitie/favourite_model_gen.dart';

abstract class ApiFavouriteSource {
  Future<List<FavouriteModelGen>> getFavouriteDoctors();
  Future<List<FavouriteHospital>> getFavouriteHospitals();
  Future<List<FavouriteHospital>> addFavourite(FavouriteHospital hospital);
  Future<List<FavouriteHospital>> removeFavourite(FavouriteHospital hospital);
}

class FakeApiFavouriteSourceImpl extends ApiFavouriteSource {
  // قائمة وهمية لتخزين البيانات
  final List<FavouriteHospital> _hospitals = [
    FavouriteHospital(
      title: 'El-Nasr Hospital',
      location: 'Orthopedic',
      rateNum: '4.8',
      date: '9:30am - 8:00pm',
    ),
    FavouriteHospital(
      title: 'El-Shorouk Hospital',
      location: 'Cardiology',
      rateNum: '4.5',
      date: '10:00am - 7:00pm',
    ),
  ];

  final List<FavouriteModelGen> _doctors = [
    FavouriteModelGen(
      title: 'Robert Johnson',
      location: 'Orthopedic | El-Nasr Hospital',
      rateNum: '4.8',
      date: '9:30am - 8:00pm',
    ),
    FavouriteModelGen(
      title: 'Emily Clark',
      location: 'Cardiology | El-Shorouk Hospital',
      rateNum: '4.6',
      date: '10:00am - 7:00pm',
    ),
  ];

  @override
  Future<List<FavouriteModelGen>> getFavouriteDoctors() async {
    return _doctors;
  }

  @override
  Future<List<FavouriteHospital>> getFavouriteHospitals() async {
    return _hospitals;
  }

  @override
  Future<List<FavouriteHospital>> addFavourite(
    FavouriteHospital hospital,
  ) async {
    _hospitals.add(hospital);
    return _hospitals;
  }

  @override
  Future<List<FavouriteHospital>> removeFavourite(
    FavouriteHospital hospital,
  ) async {
    _hospitals.remove(hospital);
    return _hospitals;
  }
}
