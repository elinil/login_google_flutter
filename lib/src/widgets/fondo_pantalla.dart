import 'package:flutter/material.dart';

class FondoPantalla extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: LinearGradient(
          colors: [
          Color(0xFFFDD91E).withOpacity(0.9),
            Color(0xFFE82E2E).withOpacity(0.9),
          ],
          stops: [0.01,0.4],
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topRight
        )
      ),
    );
  }
}