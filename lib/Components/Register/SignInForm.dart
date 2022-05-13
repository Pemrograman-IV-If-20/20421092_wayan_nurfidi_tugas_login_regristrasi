

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar_wayannurfidi/Components/custom_surfix_icon.dart';
import 'package:toko_gitar_wayannurfidi/Components/default_battom_custome_color.dart';
import 'package:toko_gitar_wayannurfidi/Screens/Login/login_screens.dart';
import 'package:toko_gitar_wayannurfidi/Screens/Register/Registrasi.dart';
import 'package:toko_gitar_wayannurfidi/size_config.dart';
import 'package:toko_gitar_wayannurfidi/utils/constants.dart';

class formDaftar extends StatefulWidget {
@override 
_formDaftar createState() =>_formDaftar();
}

class _formDaftar extends State<formDaftar> {
 
 final _formKey = GlobalKey<FormState>();
 String? name;
 String? email;
 String? username;
 String? password;

 bool? remember = false;

 TextEditingController txtName = TextEditingController(),
                       txtEmail = TextEditingController();
 TextEditingController txtUserName = TextEditingController(),
                       txtPassword = TextEditingController();
 


FocusNode focusNode = new FocusNode();
  @override 
  Widget build(BuildContext context){
    return Form(
      child: Column(
        children: [
          buildName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildUserName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmail(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          
        DefaultButtonCustomeColor(
          color: kPrimaryColor,
          text: "DAFTAR",
          press: () {},
        ),
        SizedBox(
          height: 20,
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

  TextFormField buildName(){
    return TextFormField(
      controller: txtName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Nama Lengkap',
        hintText: 'Masukkan Nama anda',
        labelStyle: TextStyle(
          color:focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg",
          )
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
        hintText: 'Buat username anda',
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
        hintText: 'Buat Password anda',
        labelStyle: TextStyle(
          color:focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg",
          )
        ),
    );
  }

  
}