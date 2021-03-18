import 'package:flutter/material.dart';
import 'package:google_auth_ejemlee/src/routes/router.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'welcome',
      routes: appRoutes,
    );
  }
}