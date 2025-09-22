import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainerIcon extends StatelessWidget {
  const CustomContainerIcon({super.key, required this.iconPath});
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(iconPath, height: 15, width: 15),
    );
  }
}
