import 'package:booking_doctor/features/favourite/domain/entities/favourite_hospital.dart';

class FavouriteHospitalModel extends FavouriteHospital {
  FavouriteHospitalModel({
    required super.title,
    required super.location,
    required super.rateNum,
    required super.date,
  });
  factory FavouriteHospitalModel.fromJson(Map<String, dynamic> json) {
    return FavouriteHospitalModel(
      title: json['title'],
      location: json['location'],
      rateNum: json['rateNum'],
      date: json['date'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "location": location,
      "rateNum": rateNum,
      "date": date,
    };
  }
}
