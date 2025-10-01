import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentLoading());

  void getPayment(){
    emit(PaymentLoading());
    Future.delayed(const Duration(seconds: 1),(){
      emit(PaymentLoaded());
    });
  }
}


