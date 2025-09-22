import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  int index = 0;

  changeIndex(int currentIndex) {
    index = currentIndex;
    emit(ChangeIndexBottomNavState());
  }
}
