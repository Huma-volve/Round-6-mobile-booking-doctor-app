import 'package:booking_doctor/features/map_search_result.dart/presentation/view/widget/map_search_result_view_body.dart';
import 'package:flutter/material.dart';

class MapSearchResultView extends StatelessWidget {
  const MapSearchResultView({super.key});
  static const routeName = 'map_search_result_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: MapSearchResultViewBody());
  }
}
