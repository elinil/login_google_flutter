import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class RedSocial extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         GestureDetector(
                           onTap: (){},
                            child: Container(
                             padding: EdgeInsets.all(10.0),
                             decoration: BoxDecoration(
                              //  border: Border.all(
                                //  width: 2,
                                //  color: Colors.blue
                                // color: Theme.of(context).buttonColor
                              //  ),
                              //  shape: BoxShape.circle
                             ),
                             child: Image.asset('assets/img/facebook.png',width: 60,)
                           ),
                         ),
                         SizedBox(width: 30.0),
                         GestureDetector(
                           onTap: (){},
                           child: Container(
                             padding: EdgeInsets.all(10.0),
                             child: Image.asset('assets/img/google.png',width: 60,)
                           ),
                         ),
                       ],
                     );
  }
}