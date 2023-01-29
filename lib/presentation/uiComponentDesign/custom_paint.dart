import 'package:flutter/material.dart';
class CustomRectangle extends CustomPainter{
  bool? isFilled;
  CustomRectangle({this.isFilled});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.blue;
    if(isFilled != null){
      paint.style = PaintingStyle.fill;
    }else{
      paint.style = PaintingStyle.stroke;
    }
    paint.strokeCap = StrokeCap.round;
    paint.strokeJoin = StrokeJoin.round;
    paint.strokeWidth = 5;
    Offset offset = Offset(size.width  * .5, size.height);
    Rect rect = Rect.fromCenter(center: offset, width: 50, height: 50);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}