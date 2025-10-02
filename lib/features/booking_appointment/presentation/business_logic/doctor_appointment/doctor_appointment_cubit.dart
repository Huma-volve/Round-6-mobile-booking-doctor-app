import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'doctor_appointment_state.dart';

class DoctorAppointmentCubit extends Cubit<DoctorAppointmentState> {
  DoctorAppointmentCubit() : super(DoctorAppointmentLoading());

  void getAppointment(){
    emit(DoctorAppointmentLoading());
    Future.delayed(const Duration(seconds: 1),(){
      emit(DoctorAppointmentLoaded());
    });
  }
}


