part of 'doctor_appointment_cubit.dart';

@immutable
sealed class DoctorAppointmentState {}

final class DoctorAppointmentLoading extends DoctorAppointmentState {}

final class DoctorAppointmentLoaded extends DoctorAppointmentState {}
