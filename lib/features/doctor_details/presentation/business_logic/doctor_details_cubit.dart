import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'doctor_details_state.dart';

class DoctorDetailsCubit extends Cubit<DoctorDetailsState> {
  DoctorDetailsCubit() : super(DoctorDetailsLoading());

  void getDoctorDetails(){
    emit(DoctorDetailsLoading());
    Future.delayed(const Duration(seconds: 2),(){
      emit(DoctorDetailsLoaded());
    });
  }
}
