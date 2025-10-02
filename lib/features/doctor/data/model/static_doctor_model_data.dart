import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/core/constants/app_images.dart';

class StaticDoctorModelData {
  final String name;
  final String specialty;
  final String hospital;
  final String image;
  final String heartIcon;
  final double rating;
  final String workingHours;

  const StaticDoctorModelData({
    required this.name,
    required this.specialty,
    required this.hospital,
    required this.image,
    required this.heartIcon,
    required this.rating,
    required this.workingHours,
  });
}

List<String> images = [
  AppImages.Test1,
  AppImages.imagesSecondImage,
  AppImages.imagesThirdImage,
  AppImages.imagesFourthImage,
  AppImages.imagesFiveImage,
  AppImages.imagesSevenImage,
  AppImages.Test1,
  AppImages.imagesSecondImage,
  AppImages.imagesThirdImage,
  AppImages.imagesFourthImage,
];
List<String> heartImages = [
  AppIcons.iconsEmptyHeartIcon,
  AppIcons.iconsEmptyHeartIcon,
  AppIcons.iconsEmptyHeartIcon,
  AppIcons.iconsRedHeartIcon,
  AppIcons.iconsEmptyHeartIcon,
  AppIcons.iconsEmptyHeartIcon,
  AppIcons.iconsEmptyHeartIcon,
  AppIcons.iconsEmptyHeartIcon,
  AppIcons.iconsEmptyHeartIcon,
  AppIcons.iconsEmptyHeartIcon,
];

List<StaticDoctorModelData> doctorsList = [
  const StaticDoctorModelData(
    name: 'Robert Johnson',
    specialty: 'Orthopedic',
    hospital: 'El-Nasr Hospital',
    image: AppImages.Test1,
    heartIcon: AppIcons.iconsEmptyHeartIcon,
    rating: 4.8,
    workingHours: '9:30am - 8:00pm',
  ),
  const StaticDoctorModelData(
    name: 'Sarah Ahmed',
    specialty: 'Cardiologist',
    hospital: 'Cairo Heart Center',
    image: AppImages.imagesSecondImage,
    heartIcon: AppIcons.iconsEmptyHeartIcon,
    rating: 4.6,
    workingHours: '10:00am - 6:00pm',
  ),
  const StaticDoctorModelData(
    name: 'Mohamed Ali',
    specialty: 'Dermatologist',
    hospital: 'Tanta Skin Clinic',
    image: AppImages.imagesThirdImage,
    heartIcon: AppIcons.iconsRedHeartIcon,
    rating: 4.9,
    workingHours: '12:00pm - 9:00pm',
  ),
  const StaticDoctorModelData(
    name: 'Layla Hassan',
    specialty: 'Pediatrician',
    hospital: 'Alex Kids Hospital',
    image: AppImages.imagesFourthImage,
    heartIcon: AppIcons.iconsEmptyHeartIcon,
    rating: 4.7,
    workingHours: '8:00am - 4:00pm',
  ),
  const StaticDoctorModelData(
    name: 'Omar Khaled',
    specialty: 'Neurologist',
    hospital: 'Misr Neurology Center',
    image: AppImages.imagesFiveImage,
    heartIcon: AppIcons.iconsRedHeartIcon,
    rating: 4.5,
    workingHours: '11:00am - 7:00pm',
  ),
  const StaticDoctorModelData(
    name: 'Mona Adel',
    specialty: 'Gynecologist',
    hospital: 'Cairo Women’s Clinic',
    image: AppImages.imagesSevenImage,
    heartIcon: AppIcons.iconsEmptyHeartIcon,
    rating: 4.8,
    workingHours: '9:00am - 5:00pm',
  ),
  const StaticDoctorModelData(
    name: 'Karim Fathy',
    specialty: 'ENT Specialist',
    hospital: 'Delta ENT Center',
    image: AppImages.Test1,
    heartIcon: AppIcons.iconsEmptyHeartIcon,
    rating: 4.4,
    workingHours: '1:00pm - 9:00pm',
  ),
  const StaticDoctorModelData(
    name: 'Nour Samir',
    specialty: 'Dentist',
    hospital: 'Smile Dental Clinic',
    image: AppImages.imagesSecondImage,
    heartIcon: AppIcons.iconsEmptyHeartIcon,
    rating: 4.9,
    workingHours: '10:00am - 6:00pm',
  ),
  const StaticDoctorModelData(
    name: 'Hany Youssef',
    specialty: 'Psychiatrist',
    hospital: 'MindCare Hospital',
    image: AppImages.imagesThirdImage,
    heartIcon: AppIcons.iconsRedHeartIcon,
    rating: 4.6,
    workingHours: '2:00pm - 10:00pm',
  ),
  const StaticDoctorModelData(
    name: 'Amira Lotfy',
    specialty: 'General Practitioner',
    hospital: 'City Medical Center',
    image: AppImages.imagesFourthImage,
    heartIcon: AppIcons.iconsEmptyHeartIcon,
    rating: 4.3,
    workingHours: '9:00am - 3:00pm',
  ),
];
