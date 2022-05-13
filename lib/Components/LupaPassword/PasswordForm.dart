



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar_wayannurfidi/Components/custom_surfix_icon.dart';
import 'package:toko_gitar_wayannurfidi/Components/default_battom_custome_color.dart';
import 'package:toko_gitar_wayannurfidi/Screens/Login/login_screens.dart';
import 'package:toko_gitar_wayannurfidi/Screens/Register/Registrasi.dart';
import 'package:toko_gitar_wayannurfidi/size_config.dart';
import 'package:toko_gitar_wayannurfidi/utils/constants.dart';

class resetform extends StatefulWidget {
@override 
_resetform createState() =>_resetform();
}

class _resetform extends State<resetform> {
 
 final _formKey = GlobalKey<FormState>();
 String? username;
 String? email;
 String? password;
 bool? remember = false;

 TextEditingController txtUserName = TextEditingController(),
                       txtPassword = TextEditingController(),
                       txtEmail = TextEditingController();


FocusNode focusNode = new FocusNode();
  @override 
  Widget build(BuildContext context){
    return Form(
      child: Column(
        children: [
          buildUserName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmail(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          
        DefaultButtonCustomeColor(
          color: kPrimaryColor,
          text: "RESET PASSWORD",
          press: () {},
        ),
        SizedBox(
          height: 20,
        ),
         GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RegistrasiScreen.routeName);
              },
              child: Text("Belum Punya Akun ? Daftar Disini", style: TextStyle(decoration: TextDecoration.underline),
             ),
           ),
        GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, login_screens.routeName);
              },
              child: Text("Sudah Punya Akun ? Login Disini", style: TextStyle(decoration: TextDecoration.underline),
             ),
           )

      ],
    ),
   );
  }

  TextFormField buildUserName(){
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Masukkan username anda',
        labelStyle: TextStyle(
          color:focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg",
          )
        ),
    );
  }
  TextFormField buildEmail(){
    return TextFormField(
      controller: txtEmail,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Masukkan Email anda',
        labelStyle: TextStyle(
          color:focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg",
          )
        ),
    );
  }
  TextFormField buildPassword(){
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukkan Password Baru anda',
        labelStyle: TextStyle(
          color:focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg",
          )
        ),
    );
  }
}