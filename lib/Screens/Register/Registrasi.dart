
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar_wayannurfidi/Components/Register/SignInComponents.dart';
import 'package:toko_gitar_wayannurfidi/size_config.dart';

class RegistrasiScreen extends StatelessWidget {

static String routeName = "/sign_up";

@override
Widget build(BuildContext context){
  SizeConfig().init(context);

  return Scaffold(
    appBar: AppBar(
      automaticallyImplyLeading: false,
    ),
    body:SigninComponents (),
  ) ;
 }
}