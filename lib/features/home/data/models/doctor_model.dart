import 'package:booking_doctor/features/home/domain/entities/doctor_model.dart';

class DoctorModel extends DoctorEntity {
  DoctorModel({
    required super.title,
    required super.location,
    required super.rateNum,
    required super.date,
    required super.id,
  });
  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      title: json['name'],
      location: json['location'],
      rateNum: json['rateNum'],
      date: json['date'],
      id: 'id',
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


// class DoctorModel {
//   bool success;
//   String message;
//   List<Data> data;

//   DoctorModel({this.success, this.message, this.data});

//   DoctorModel.fromJson(Map<String, dynamic> json) {
//     success = json['success'];
//     message = json['message'];
//     if (json['data'] != null) {
//       data = new List<Data>();
//       json['data'].forEach((v) {
//         data.add(new Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['success'] = this.success;
//     data['message'] = this.message;
//     if (this.data != null) {
//       data['data'] = this.data.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Data {
//   int doctorProfileId;
//   String about;
//   int experienceYears;
//   String pricePerHour;
//   int userId;
//   String name;
//   String email;
//   String phone;
//   int specialtyId;
//   String specialtyNameEn;
//   String specialtyNameAr;
//   String specialtyDescription;
//   int hospitalId;
//   String hospitalName;
//   String hospitalStartTime;
//   String hospitalEndTime;
//   int availabilityId;
//   String day;
//   String startTime;
//   String endTime;

//   Data(
//       {this.doctorProfileId,
//       this.about,
//       this.experienceYears,
//       this.pricePerHour,
//       this.userId,
//       this.name,
//       this.email,
//       this.phone,
//       this.specialtyId,
//       this.specialtyNameEn,
//       this.specialtyNameAr,
//       this.specialtyDescription,
//       this.hospitalId,
//       this.hospitalName,
//       this.hospitalStartTime,
//       this.hospitalEndTime,
//       this.availabilityId,
//       this.day,
//       this.startTime,
//       this.endTime});

//  Factory Data.fromJson(Map<String, dynamic> json) {
//     doctorProfileId = json['doctor_profile_id'];
//     about = json['about'];
//     experienceYears = json['experience_years'];
//     pricePerHour = json['price_per_hour'];
//     userId = json['user_id'];
//     name = json['name'];
//     email = json['email'];
//     phone = json['phone'];
//     specialtyId = json['specialty_id'];
//     specialtyNameEn = json['specialty_name_en'];
//     specialtyNameAr = json['specialty_name_ar'];
//     specialtyDescription = json['specialty_description'];
//     hospitalId = json['hospital_id'];
//     hospitalName = json['hospital_name'];
//     hospitalStartTime = json['hospital_start_time'];
//     hospitalEndTime = json['hospital_end_time'];
//     availabilityId = json['availability_id'];
//     day = json['day'];
//     startTime = json['start_time'];
//     endTime = json['end_time'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['doctor_profile_id'] = this.doctorProfileId;
//     data['about'] = this.about;
//     data['experience_years'] = this.experienceYears;
//     data['price_per_hour'] = this.pricePerHour;
//     data['user_id'] = this.userId;
//     data['name'] = this.name;
//     data['email'] = this.email;
//     data['phone'] = this.phone;
//     data['specialty_id'] = this.specialtyId;
//     data['specialty_name_en'] = this.specialtyNameEn;
//     data['specialty_name_ar'] = this.specialtyNameAr;
//     data['specialty_description'] = this.specialtyDescription;
//     data['hospital_id'] = this.hospitalId;
//     data['hospital_name'] = this.hospitalName;
//     data['hospital_start_time'] = this.hospitalStartTime;
//     data['hospital_end_time'] = this.hospitalEndTime;
//     data['availability_id'] = this.availabilityId;
//     data['day'] = this.day;
//     data['start_time'] = this.startTime;
//     data['end_time'] = this.endTime;
//     return data;
//   }
// }