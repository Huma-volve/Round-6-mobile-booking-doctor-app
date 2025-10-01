import 'package:booking_doctor/features/home/domain/entities/doctor_model.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<DoctorEntity> doctors;
  final int posInCate;

  HomeLoaded({required this.doctors, this.posInCate = 0});
}

class HomeFaliure extends HomeState {
  final String massage;
  HomeFaliure({required this.massage});
}

class FavouriteLoaded extends HomeState {
  final List<DoctorEntity> doctors;
  FavouriteLoaded({required this.doctors});
}
