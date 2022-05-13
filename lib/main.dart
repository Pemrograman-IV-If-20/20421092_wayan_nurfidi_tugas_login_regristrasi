

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar_wayannurfidi/Screens/Login/login_screens.dart';
import 'package:toko_gitar_wayannurfidi/routes.dart';
import 'package:toko_gitar_wayannurfidi/theme.dart';

void main() async {
  runApp(
    MaterialApp(
      title: "Toko Gitar Wayan",
      theme: theme(),
      initialRoute: login_screens.routeName,
      routes: routes, 
    )
  );
}
//flutter run --no-sound-null-safety