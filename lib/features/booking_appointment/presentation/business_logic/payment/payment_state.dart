part of 'payment_cubit.dart';

@immutable
sealed class PaymentState {}

final class PaymentLoading extends PaymentState {}

final class PaymentLoaded extends PaymentState {}
