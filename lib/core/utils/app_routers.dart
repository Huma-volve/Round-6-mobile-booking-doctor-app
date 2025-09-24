import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/features/booking_appointment/presentation/views/doctor_appointment_screen.dart';
import 'package:booking_doctor/features/doctor_details/presentation/views/doctor_details_screen.dart';
import 'package:flutter/material.dart';
import '../../features/booking_appointment/presentation/views/doctor_payment_screen.dart';

class AppRouters{

static Route<dynamic> onGenerateRoute(RouteSettings settings){

  switch(settings.name){
    case AppRoutes.doctorDetailsScreen:{
      return MaterialPageRoute(builder: (_)=>DoctorDetailsScreen());
    }
    case AppRoutes.doctorAppointmentScreen:{
      return MaterialPageRoute(builder: (_)=>DoctorAppointmentScreen());
    }
    case AppRoutes.doctorPaymentScreen:{
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(builder: (_)=>DoctorPaymentScreen(time:args["time"],date: args["date"],));
    }
    default: {
      return MaterialPageRoute(builder: (_)=>Scaffold());
    }



  }


}


}