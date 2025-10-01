// import 'package:booking_doctor/features/favourite/domain/entities/favourite_model_gendart';
// import 'package:booking_doctor/features/favourite/domain/entities/favourite_hospital.dart';
// import 'package:booking_doctor/features/favourite/domain/repo/favourite_repo.dart';
// import 'package:booking_doctor/features/favourite/domain/useCases/get_favourite_doctors.dart';
// import 'package:booking_doctor/features/home/domain/entities/doctor_model.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meta/meta.dart';

// part 'favourite_state.dart';

// class FavouriteCubit extends Cubit<FavouriteState> {
//   FavouriteCubit() : super(FavouriteInitial());

//   List<DoctorEntity> favouriteDoctor = [];
//   List<FavouriteHospital> favouriteHospital = [];

//   getFavouriteDoctorsCubit() async {
//     emit(FavouriteLoading());
//     try {
//       emit(
//         FavouriteLoaded(
//           favouriteDoctor: favouriteDoctor,
//           favouriteHospital: favouriteHospital,
//         ),
//       );
//     } on Exception catch (e) {
//       emit(FavouriteFailure(e.toString()));
//     }
//   }

//   void toggleFavouriteDoctor(DoctorEntity doctor) {
//     if (favouriteDoctor.contains(doctor)) {
//       favouriteDoctor.remove(doctor);
//     } else {
//       favouriteDoctor.add(doctor);
//     }

//     emit(
//       FavouriteLoaded(
//         favouriteDoctor: List.from(
//           favouriteDoctor,
//         ), // اعمل نسخة جديدة عشان detect التغيير
//         favouriteHospital: favouriteHospital,
//       ),
//     );
//   }
// }
