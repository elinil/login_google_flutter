import 'package:flutter/material.dart';


class IconCategoria extends StatelessWidget {

  final Widget iconoCategoria;
  final String textoCategoria;

  const IconCategoria({
    Key key, 
    this.iconoCategoria, 
    this.textoCategoria
    }) : super(key: key);

@override
Widget build(BuildContext context) {

  return Container(
  margin: EdgeInsets.only(left: 5),
  padding: EdgeInsets.all(5),
  decoration: BoxDecoration(
    color: Colors.red[600],
    borderRadius: BorderRadius.circular(10.0),
    // boxShadow: <BoxShadow>[
    // BoxShadow(
    // color: Colors.black,
    // offset: Offset.infinite
    // )
    // ]
  ),
  child: Column(
    children: [
      Container(
          width: 80,
          child: this.iconoCategoria
          
          // Image(image: AssetImage('assets/img/pollo.png'))
          ),
      Container(
        child: Text(this.textoCategoria,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      )
    ],
  ),
);
}
}