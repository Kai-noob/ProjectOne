import 'package:flutter/cupertino.dart';
import 'package:flutterproject/constants/constants.dart';

class BackgroundPainter extends CustomPainter{
  BackgroundPainter():kPrimaryPaint=Paint()..color=kPrimaryColor..style=PaintingStyle.fill; 
  final Paint kPrimaryPaint;
  @override
  void paint(Canvas canvas, Size size) {
    paintkPrimary(canvas, size);
  }

  void paintkPrimary(Canvas canvas,Size size){
    final path=Path();
    path.moveTo(size.width, size.height/2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, kPrimaryPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
   return true;
  }

}