import 'package:booking_doctor/core/constants/app_images.dart';
import 'package:flutter/widgets.dart';

class HomeImageWidget extends StatelessWidget {
  const HomeImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      height: size.height * .24,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.homeImage),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
