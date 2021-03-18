import 'package:flutter/material.dart';


class HeaderWidget extends StatelessWidget {

@override
Widget build(BuildContext context) {

    return Scaffold(
       body: Container(
         child: HeaderCurve(),
       ),
    );
}
}

class HeaderCurve extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).buttonColor,
      child: CustomPaint(
        painter: _HeaderCurvePointer(),
      ),
    );
  }
}

class _HeaderCurvePointer extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final lapiz =  Paint();

    //Propiedades
    // lapiz.color = Color(Colors.yellow);
    lapiz.color = Color(0xFFFFFB3B);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;


    final path = Path();

    //dibujamos con el Lapiz

    path.lineTo(0, size.height*0.999);
    path.lineTo(size.width*0.55, size.height*0.999);
    path.quadraticBezierTo(size.width*0.35,size.height*0.50 ,size.width*0.55, 0);
    // path.lineTo(size.width*0.5, 0);



    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;

}