import 'package:flutter/cupertino.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:toko_gitar_wayannurfidi/Components/Login/LoginForm.dart';
import 'package:toko_gitar_wayannurfidi/Components/LupaPassword/PasswordForm.dart';
import 'package:toko_gitar_wayannurfidi/Components/Register/SignInForm.dart';
import 'package:toko_gitar_wayannurfidi/size_config.dart';
import 'package:toko_gitar_wayannurfidi/utils/constants.dart';

class SigninComponents extends StatefulWidget {
  @override 
  _SigninComponents createState() => _SigninComponents();

}
class _SigninComponents extends State<SigninComponents> {

  @override 
  Widget build(BuildContext) {
    return SafeArea(child: SizedBox(
      width: double.infinity,
      child: Padding (
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child:  Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                SizedBox(
                   height: SizeConfig.screenHeight * 0.04,
                ),
                SimpleShadow(
                  child: Image.asset('images/resume.png', height: 140, width: 202,
                  ),
                  opacity: 0.5,
                  color: kSecondaryColor,
                  offset: Offset(5, 5),
                  sigma: 2,
                  ),
                  Padding(padding: EdgeInsets.only(left: 10),
                  child: Row (
                    
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                    children: [
                      Text("SIGN IN", style: mTitleStyle,

                      )
                  ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  formDaftar()
            ],
            ),
          ),
       ),
      )
     );
  }
}