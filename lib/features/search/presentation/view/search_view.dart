import 'package:booking_doctor/core/helpers/custom_app_bar.dart';
import 'package:booking_doctor/features/search/presentation/view/widget/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static const routeName = 'search_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'Search'),
      body: const SearchViewBody(),
    );
  }
}
