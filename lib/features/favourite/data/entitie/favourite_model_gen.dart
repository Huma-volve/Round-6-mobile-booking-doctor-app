class FavouriteModelGen {
  String? imageUrl;
  String title;
  String location;
  String rateNum;
  String date;
  FavouriteModelGen({
    required this.title,
    required this.location,
    required this.rateNum,
    required this.date,
    this.imageUrl,
  });
}
