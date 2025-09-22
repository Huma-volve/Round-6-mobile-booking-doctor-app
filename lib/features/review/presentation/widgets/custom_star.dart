import 'package:flutter/material.dart';

class CustomStar extends CustomPainter {
  final Color color;

  CustomStar({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(7.65331, 21.8334);
    path_0.cubicTo(7.79997, 21.1801, 7.53331, 20.2467, 7.06664, 19.7801);
    path_0.lineTo(3.82664, 16.5401);
    path_0.cubicTo(2.81331, 15.5267, 2.41331, 14.4467, 2.70664, 13.5134);
    path_0.cubicTo(3.01331, 12.5801, 3.95998, 11.9401, 5.37331, 11.7001);
    path_0.lineTo(9.53331, 11.0067);
    path_0.cubicTo(10.1333, 10.9001, 10.8666, 10.3667, 11.1466, 9.82008);
    path_0.lineTo(13.44, 5.22008);
    path_0.cubicTo(14.1066, 3.90008, 15.0133, 3.16675, 16, 3.16675);
    path_0.cubicTo(16.9866, 3.16675, 17.8933, 3.90008, 18.56, 5.22008);
    path_0.lineTo(20.8533, 9.82008);
    path_0.cubicTo(21.0266, 10.1667, 21.3866, 10.5001, 21.7733, 10.7267);
    path_0.lineTo(7.41331, 25.0868);
    path_0.cubicTo(7.22664, 25.2734, 6.90664, 25.1001, 6.95997, 24.8334);
    path_0.lineTo(7.65331, 21.8334);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = color;
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(24.9334, 19.78);
    path_1.cubicTo(24.4534, 20.26, 24.1867, 21.18, 24.3467, 21.8334);
    path_1.lineTo(25.2667, 25.8467);
    path_1.cubicTo(25.6534, 27.5134, 25.4134, 28.7667, 24.5867, 29.3667);
    path_1.cubicTo(24.2534, 29.6067, 23.8534, 29.7267, 23.3867, 29.7267);
    path_1.cubicTo(22.7067, 29.7267, 21.9067, 29.4734, 21.0267, 28.9534);
    path_1.lineTo(17.1201, 26.6334);
    path_1.cubicTo(16.5067, 26.2734, 15.4934, 26.2734, 14.8801, 26.6334);
    path_1.lineTo(10.9734, 28.9534);
    path_1.cubicTo(9.4934, 29.82, 8.22673, 29.9667, 7.4134, 29.3667);
    path_1.cubicTo(7.10673, 29.14, 6.88007, 28.8334, 6.7334, 28.4334);
    path_1.lineTo(22.9467, 12.22);
    path_1.cubicTo(23.5601, 11.6067, 24.4267, 11.3267, 25.2667, 11.4734);
    path_1.lineTo(26.6134, 11.7);
    path_1.cubicTo(28.0267, 11.94, 28.9734, 12.58, 29.2801, 13.5134);
    path_1.cubicTo(29.5734, 14.4467, 29.1734, 15.5267, 28.1601, 16.54);
    path_1.lineTo(24.9334, 19.78);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = color;
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
