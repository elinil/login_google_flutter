import 'package:flutter/material.dart';

class BotonPersonalizado extends StatelessWidget {
  final String textBoton;
  final Function onPressed;
  final Color botonColor;
  final Color textColor;
  final Widget icono;

  const BotonPersonalizado(
      {Key key,
      @required this.textBoton,
      @required this.onPressed,
      @required this.botonColor,
      this.textColor, this.icono})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      child: RaisedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: this.icono,
              ),
              Text(this.textBoton,
                  style: TextStyle(fontSize: 20.0, color: this.textColor)),
            ],
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          color: this.botonColor,
          onPressed: this.onPressed
          ),
    );
  }
}
