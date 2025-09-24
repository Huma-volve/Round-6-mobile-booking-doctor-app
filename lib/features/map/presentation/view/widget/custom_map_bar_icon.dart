import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomMapBarIcon extends StatelessWidget {
  const CustomMapBarIcon({required this.image, super.key});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: SvgPicture.asset(image),
    );
  }
}
