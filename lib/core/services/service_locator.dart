import 'package:booking_doctor/features/favourite/data/repo/favourite_repo_impl.dart';
import 'package:booking_doctor/features/favourite/data/source/api_favourite_source.dart';
import 'package:booking_doctor/features/favourite/domain/repo/favourite_repo.dart';
import 'package:booking_doctor/features/favourite/domain/useCases/get_favourite_doctors.dart';
import 'package:booking_doctor/features/home/data/repo/home_repo_imple.dart';
import 'package:booking_doctor/features/home/data/source/api_home_source.dart';
import 'package:booking_doctor/features/home/domain/repo/home_repo.dart';
import 'package:booking_doctor/features/home/domain/use_case/get_doctor_near_you.dart';
import 'package:booking_doctor/features/home/presentation/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

setUpServiceLocator() {
  sl.registerSingleton<ApiFavouriteSource>(FakeApiFavouriteSourceImpl());
  sl.registerSingleton<FavouriteRepo>(
    FavouriteRepoImpl(apiFavouriteSource: sl<ApiFavouriteSource>()),
  );
  sl.registerSingleton<GetFavouriteDoctors>(
    GetFavouriteDoctors(favouriteRepo: sl<FavouriteRepo>()),
  );
  // home source

  sl.registerSingleton<ApiHomeSource>(ApiHomeFakeImple());

  // home repo
  sl.registerSingleton<HomeRepo>(
    HomeRepoImple(apiHomeSource: sl<ApiHomeSource>()),
  );

  // home use case
  sl.registerSingleton<GetDoctorNearYouUseCase>(
    GetDoctorNearYouUseCase(homeRepo: sl<HomeRepo>()),
  );

  // home cubit

  sl.registerFactory(
    () => HomeCubit(getDoctorNearYouUseCase: sl<GetDoctorNearYouUseCase>()),
  );
}
