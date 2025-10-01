part of 'doctor_details_cubit.dart';

@immutable
sealed class DoctorDetailsState {}

final class DoctorDetailsLoading extends DoctorDetailsState {}

final class DoctorDetailsLoaded extends DoctorDetailsState {}
