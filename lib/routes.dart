import 'package:flutter/cupertino.dart';
import 'package:toko_gitar_wayannurfidi/Screens/Login/login_screens.dart';
import 'package:toko_gitar_wayannurfidi/Screens/LupaPassword/PasswordScreen.dart';
import 'package:toko_gitar_wayannurfidi/Screens/Register/Registrasi.dart';

final Map<String, WidgetBuilder> routes = {
  login_screens.routeName :(context) => login_screens(),
  RegistrasiScreen.routeName : (context) => RegistrasiScreen(),
  PasswordScreen.routeName :(context) => PasswordScreen()
};