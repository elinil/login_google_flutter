import 'package:flutter/material.dart';
import 'package:google_auth_ejemlee/src/pages/home_page.dart';

import 'package:google_auth_ejemlee/src/pages/welcome_page.dart';

final Map<String,Widget Function(BuildContext)> appRoutes = {
  'welcome' : (_) => WelcomePage(),
  'home'    : (_) => HomePage()
};