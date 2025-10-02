import 'package:booking_doctor/features/favourite/domain/entitie/favourite_model_gen.dart';

class FavouriteDoctorModel extends FavouriteModelGen {
  FavouriteDoctorModel({
    required super.title,
    required super.location,
    required super.rateNum,
    required super.date,
  });

  factory FavouriteDoctorModel.fromJson(Map<String, dynamic> json) {
    return FavouriteDoctorModel(
      title: json['title'],
      location: json['location'],
      rateNum: json['rateNum'],
      date: json['date'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'location': location,
      'rateNum': rateNum,
      'date': date,
    };
  }
}
