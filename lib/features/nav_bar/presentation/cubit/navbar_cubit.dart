import 'package:flutter_bloc/flutter_bloc.dart';

part 'navbar_state.dart';

class NavbarCubit extends Cubit<NavbarState> {
  NavbarCubit() : super(NavbarInitial());
  int index = 0;

  changeIndex(int currentIndex) {
    index = currentIndex;
    emit(ChangeIndexBottomNavState());
  }
}
