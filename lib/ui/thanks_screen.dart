import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'complete_profile_screen.dart';

class ThanksScreen extends StatelessWidget {
  const ThanksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color:  Colors.blueGrey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.25,),
              Text("BAMREC",
                 style: GoogleFonts.bebasNeue(fontSize: 45,
                       fontWeight: FontWeight.w400, color: CupertinoColors.white),
               ),
              SizedBox(height: size.height * 0.08,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CompleteProfile()));
                },
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blueGrey.shade700,
                  child: const Icon(Icons.send, color: Colors.white,),
                ),
              ),
              SizedBox(height: size.height * 0.03,),
              Text("Thank you",
                style: GoogleFonts.gothicA1(fontSize: 26,
                    fontWeight: FontWeight.w700, color: CupertinoColors.white),
              ),
              const SizedBox(height: 16),
              const Text("Your application has been sent in",
                style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w400, color: CupertinoColors.white),),
              SizedBox(height: size.height * 0.3,),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blueGrey.shade700,
                child: const Icon(Icons.cancel, color: Colors.white,),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
