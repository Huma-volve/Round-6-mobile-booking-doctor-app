// ignore_for_file: public_member_api_docs, sort_constructors_first

class FavouriteHospitalModel {
  String? imageUrl;
  String title;
  String location;
  String rateNum;
  String date;
  FavouriteHospitalModel({
    this.imageUrl,
    required this.title,
    required this.location,
    required this.rateNum,
    required this.date,
  });
}
