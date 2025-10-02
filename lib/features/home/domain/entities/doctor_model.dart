// ignore_for_file: public_member_api_docs, sort_constructors_first
<<<<<<< HEAD
class DoctorModel {
  String? imageUrl;
  String title;
  String location;
  String rateNum;
  String date;
  DoctorModel({
=======
class DoctorEntity {
  final String id;
  final String title;
  final String location;
  final String rateNum;
  final String date;
  final String? imageUrl;
  bool isFavourite;

  DoctorEntity({
    required this.id,
>>>>>>> SearchAndMapViewLogic
    required this.title,
    required this.location,
    required this.rateNum,
    required this.date,
    this.imageUrl,
<<<<<<< HEAD
=======
    this.isFavourite = false,
>>>>>>> SearchAndMapViewLogic
  });

  DoctorEntity copyWith({
    String? id,
    String? title,
    String? location,
    String? rateNum,
    String? date,
    String? imageUrl,
    bool? isFavourite,
  }) {
    return DoctorEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      location: location ?? this.location,
      rateNum: rateNum ?? this.rateNum,
      date: date ?? this.date,
      imageUrl: imageUrl ?? this.imageUrl,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DoctorEntity &&
        other.title == title &&
        other.location == location &&
        other.rateNum == rateNum &&
        other.date == date &&
        other.imageUrl == imageUrl &&
        other.isFavourite == isFavourite;
  }

  @override
  int get hashCode =>
      title.hashCode ^
      location.hashCode ^
      rateNum.hashCode ^
      date.hashCode ^
      imageUrl.hashCode ^
      isFavourite.hashCode;
}
