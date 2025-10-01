import 'package:booking_doctor/features/map/presentation/view/widget/map_view_body.dart';
import 'package:flutter/material.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});
  static const routeName = 'map_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: MapViewBody());
  }
}
