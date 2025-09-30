// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_cubit.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  List<DoctorEntity> doctors;
  HomeLoaded({required this.doctors});
}

class HomeFaliure extends HomeState {
  String massage;
  HomeFaliure({required this.massage});
}

class FavouriteLoaded extends HomeState {
  List<DoctorEntity> doctors;
  FavouriteLoaded({required this.doctors});
}
