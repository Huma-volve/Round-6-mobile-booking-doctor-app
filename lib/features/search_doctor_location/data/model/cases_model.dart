import 'package:booking_doctor/core/constants/app_icons.dart';

class CasesModel {
  final String title;
  final String image;
  CasesModel({required this.title, required this.image});
}

List<CasesModel> casesList = [
  CasesModel(title: 'Sort', image: AppIcons.iconsSortIcon),
  CasesModel(title: 'Filter', image: AppIcons.iconsTuningIcon),
  CasesModel(title: 'Map', image: AppIcons.iconsRoutingIcon),
];
