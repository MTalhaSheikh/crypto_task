// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:rentalflutterapp/constants/constant.dart';
import 'package:rentalflutterapp/ui/understand_screen.dart';
import 'package:rentalflutterapp/ui/welcome_signup_screen.dart';
import 'package:rentalflutterapp/widgets/button_widget.dart';
import 'package:rentalflutterapp/widgets/signin_signup_textfield_widget.dart';

import 'forgot_password_screen.dart';

class WelcomeSigninScreen extends StatefulWidget {
  const WelcomeSigninScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeSigninScreen> createState() => _WelcomeSigninScreenState();
}

class _WelcomeSigninScreenState extends State<WelcomeSigninScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: const Color(0xFFE5E4E4),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height / 9),
                  Text("Welcome back!", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700)),
                  SizedBox(height: size.height / 9,),
                  TextfieldWidget('Email address', Icons.email, emailController),
                  SizedBox(height: 16,),
                  TextfieldWidget('Password', Icons.lock, passwordController),
                  SizedBox(height: 16,),
                  Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPasswordScreen()));
                        },
                        child: Text("Forgot password? ",
                          style: TextStyle(fontSize: 18,
                              fontWeight: FontWeight.w500, color: Colors.orange),),
                      )),
                  SizedBox(height: 32,),
                  LongButton('Login', "", Colors.white,
                          (){Navigator.push(context,
                              MaterialPageRoute(builder: (context) => UnderstandScreen()));}, Colors.orange),
                ],
              ),
              SizedBox(height: 32,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text("Don't have an account? "),
                      GestureDetector(
                        child: Text("Sign Up",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.orange),),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => WelcomeSignupScreen()));
                        },
                      )
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: const [
                      Expanded(child: Divider(height: 1, color: Colors.black38,)),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                        child: Text("or"),
                      ),
                      Expanded(child: Divider(height: 1, color: Colors.black38,)),
                    ],
                  ),
                  SizedBox(height: 40,),
                  LongButton('Sign Up with Facebook', "facebook.svg", Colors.white,
                           (){print("facebook");}, Color(0xff01579B)),
                  SizedBox(height: 24,),
                  LongButton('Sign Up with Google', "google-icon-logo.png", Colors.black,
                          (){print("Google");}, Colors.white70),
                  SizedBox(height: size.height / 9),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
