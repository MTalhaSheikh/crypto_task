// @dart=2.9
import 'package:flutter/material.dart';
import 'package:rentalflutterapp/ui/welcome_signin_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rental App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const WelcomeSigninScreen(),
    );
  }
}

