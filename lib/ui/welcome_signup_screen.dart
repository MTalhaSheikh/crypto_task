import 'package:flutter/material.dart';
import 'package:rentalflutterapp/widgets/button_widget.dart';
import 'package:rentalflutterapp/widgets/signin_signup_textfield_widget.dart';

class WelcomeSignupScreen extends StatefulWidget {
  const WelcomeSignupScreen({Key? key}) : super(key: key);

  @override
  _WelcomeSignupScreenState createState() => _WelcomeSignupScreenState();
}

class _WelcomeSignupScreenState extends State<WelcomeSignupScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController emailController = TextEditingController();
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
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
                  SizedBox(height: size.height * 0.1,),
                  const Text("Welcome!", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700)),
                  SizedBox(height: size.height * 0.06,),
                  TextfieldWidget('First Name', Icons.person, firstNameController),
                  const SizedBox(height: 16,),
                  TextfieldWidget('Last Name', Icons.person, lastNameController),
                  const SizedBox(height: 16,),
                  TextfieldWidget('Email address', Icons.email, emailController),
                  const SizedBox(height: 16,),
                  TextfieldWidget('Password', Icons.lock, passwordController),
                  const SizedBox(height: 32,),
                  LongButton('Sign up', "", Colors.white,
                          (){print("login");}, Colors.orange),
                ],
              ),
              const SizedBox(height: 32,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      const Text("Already have an account? "),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const Text("Login",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.orange),),
                      )
                    ],
                  ),
                  const SizedBox(height: 30,),
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
                  const SizedBox(height: 30,),
                  LongButton('Sign Up with Facebook', "facebook.svg", Colors.white,
                          (){print("facebook");}, const Color(0xff01579B)),
                  const SizedBox(height: 24,),
                  LongButton('Sign Up with Google', "google-icon-logo.png", Colors.black,
                          (){print("Google");}, Colors.white70),
                  SizedBox(height: size.height * 0.08,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
