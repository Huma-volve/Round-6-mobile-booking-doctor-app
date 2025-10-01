import 'package:booking_doctor/features/home/domain/entities/doctor_model.dart';

abstract class ApiHomeSource {
  getSpecialties();
  Future<List<DoctorEntity>> getDoctorsNearYou();
}

class ApiHomeFakeImple extends ApiHomeSource {
  @override
  Future<List<DoctorEntity>> getDoctorsNearYou() async {
    return [
      DoctorEntity(
        title: "Robert Johnson",
        location: "Orthopedic | El-Nasr Hospital",
        rateNum: "4.8",
        date: "9:30am - 8:00pm",
        id: 'wessam Reda',
      ),
      DoctorEntity(
        title: "Robert Johnson",
        location: "Orthopedic | El-Nasr Hospital",
        rateNum: "4.8",
        date: "9:30am - 8:00pm",
        id: "wetg2tyy27yb",
      ),
      DoctorEntity(
        title: "Robert Johnson",
        location: "Orthopedic | El-Nasr Hospital",
        rateNum: "4.8",
        date: "9:30am - 8:00pm",
        id: "beuhsh36y8",
      ),
      DoctorEntity(
        title: "Robert Johnson",
        location: "Orthopedic | El-Nasr Hospital",
        rateNum: "4.8",
        date: "9:30am - 8:00pm",
        id: "gdey6uwj",
      ),
      DoctorEntity(
        title: "Robert Johnson",
        location: "Orthopedic | El-Nasr Hospital",
        rateNum: "4.8",
        date: "9:30am - 8:00pm",
        id: "aya reda",
      ),
    ];
  }

  @override
  getSpecialties() {
    // TODO: implement getSpecialties
    throw UnimplementedError();
  }
}
