class FavouriteHospital {
  String? imageUrl;
  String title;
  String location;
  String rateNum;
  String date;

  FavouriteHospital({
    required this.title,
    required this.location,
    required this.rateNum,
    required this.date,
    this.imageUrl,
  });
}
