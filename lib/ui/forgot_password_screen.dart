// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentalflutterapp/constants/constant.dart';
import 'package:rentalflutterapp/widgets/button_widget.dart';
import 'package:rentalflutterapp/widgets/signin_signup_textfield_widget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          color:  const Color(0xFFE5E4E4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.1),
              IconButton(onPressed: (){
                Navigator.pop(context);
              },
                  icon: const Icon(Icons.west, color: Colors.orange, size: 25,)),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.02),
                    Text("Forgot Password",
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800, letterSpacing: 1),),
                    SizedBox(height: size.height * 0.05,),
                    Text("We will sent you a link to reset a \npassword.",
                    style: TextStyle(fontSize: 18),),
                    SizedBox(height: size.height * 0.07,),
                    TextfieldWidget('Email address', Icons.email, emailController),
                    SizedBox(height: size.height * 0.15,),
                    LongButton('Send', "", Colors.white,
                            (){print("login");}, Colors.orange),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
