import 'package:flutter/material.dart';
import 'package:google_auth_ejemlee/src/services/google_signin_services.dart';
import 'package:google_auth_ejemlee/src/widgets/boton_widget.dart';


class HomePage extends StatelessWidget {

@override
Widget build(BuildContext context) {

    return Scaffold(
       body: Center(
        child:BotonPersonalizado(
          textBoton: 'Cerrar Sesion', 
          onPressed: ()async{
            GoogleSignInService.signOut();
            await  Navigator.pushNamed(context, 'welcome');
            print('saliendo de la home');
          }, 
          botonColor: Colors.grey),
       ),
    );
}
}