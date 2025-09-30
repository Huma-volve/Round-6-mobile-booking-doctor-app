import 'package:booking_doctor/features/home/domain/entities/doctor_model.dart';
import 'package:booking_doctor/features/home/domain/use_case/get_doctor_near_you.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.getDoctorNearYouUseCase}) : super(HomeInitial());
  List<DoctorEntity> doctorsNearYou = [];
  List<DoctorEntity> favouritedDoctors = [];
  final GetDoctorNearYouUseCase getDoctorNearYouUseCase;
  int indexInFavourite = 0;
  getDoctorNearYou() async {
    try {
      emit(HomeLoading());
      doctorsNearYou = await getDoctorNearYouUseCase.execute();
      emit(HomeLoaded(doctors: doctorsNearYou));
    } on Exception catch (e) {
      emit(HomeFaliure(massage: e.toString()));
    }
  }

  addInFavourite(DoctorEntity doctor) {
    final index = doctorsNearYou.indexWhere((d) => d.id == doctor.id);
    if (index != -1) {
      doctorsNearYou[index] = doctorsNearYou[index].copyWith(
        isFavourite: !doctorsNearYou[index].isFavourite,
      );

      emit(HomeLoaded(doctors: List.from(doctorsNearYou)));
    }
  }

  // getListFavourite() {
  //   final favouriteDoctors = doctorsNearYou
  //       .where((doctor) => doctor.isFavourite)
  //       .toList();
  //   emit(FavouriteLoaded(doctors: favouriteDoctors));
  // }
}
