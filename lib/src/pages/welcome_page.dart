import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_auth_ejemlee/src/services/google_signin_services.dart';
import 'package:google_auth_ejemlee/src/widgets/boton_widget.dart';
import 'package:google_auth_ejemlee/src/widgets/fondo_pantalla.dart';


class WelcomePage extends StatelessWidget {

@override
Widget build(BuildContext context) {

    return Scaffold(
      body:Stack(
        children: [
          FondoPantalla(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset('assets/img/logo.png',width: 200,),
                ),
                Container(
                  child: Text('ZARFETI',style: TextStyle(
                    fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white,
                    fontFamily: 'Titulo'
                    ,),),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Text('Delivery',style: TextStyle(
                    fontSize: 30,color: Colors.white,
                    fontFamily: 'subTitulo'
                    ),),
                ),

                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: BotonPersonalizado(
                    icono: FaIcon(FontAwesomeIcons.google,color: Colors.red,),
                    textBoton: '  Ingrese con Google', 
                    botonColor: Colors.white,
                    textColor: Colors.red,
                    onPressed: () async{
                      await GoogleSignInService.signInWithGoogle();
                     Navigator.pushReplacementNamed(context, 'home');
                    },
                    ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  // margin: EdgeInsets.symmetric(vertical: 30),
                  child: BotonPersonalizado(
                    icono: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
                    textBoton: '  Ingrese con Facebook ',
                    textColor: Colors.blue, 
                    onPressed: (){}, 
                    botonColor: Colors.white
                    ),
                ),
                Container(
                  // margin: EdgeInsets.only(bottom: 50),
                  child: BotonPersonalizado(
                    icono: Icon(Icons.person,color: Colors.yellow[800],),
                    textBoton: '  Ingresar ',
                    textColor: Colors.yellow[800], 
                    onPressed: (){}, 
                    botonColor: Colors.white
                    ),
                  )
              ],
            ),
          ),
        ],
      ) ,
    );
}
}