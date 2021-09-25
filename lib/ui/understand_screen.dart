import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentalflutterapp/ui/thanks_screen.dart';
import 'package:rentalflutterapp/widgets/button_widget.dart';

class UnderstandScreen extends StatefulWidget {
  const UnderstandScreen({Key? key}) : super(key: key);

  @override
  State<UnderstandScreen> createState() => _UnderstandScreenState();
}

class _UnderstandScreenState extends State<UnderstandScreen> {
  bool acceptTerms = true;

  Widget checkBoxRow(){
    return Row(
      children: [
        Checkbox(
          activeColor: Colors.lightGreen,
          value: acceptTerms,
          onChanged: (value) {
            setState(() {
              acceptTerms = !acceptTerms;
            });
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)),
        ),
        const Expanded(
          child: Text("kjdf djfgjdf jdgfud jdgfua ajgd djfgjdf jdgfud jdgfua"
              "\nkjdf djfgjdf jdgfud jdgfua ajdfgaug\n"
              "nkjdf djfgjdf ajgdfua adjfgu ajdfgaug",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color:  const Color(0xFFE5E4E4),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.08,),
              IconButton(onPressed: (){
                Navigator.pop(context);
              },
                  icon: const Icon(Icons.west, color: Colors.orange, size: 25,)),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.01,),
                    const Text("I understand \nthat...",
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700, letterSpacing: 1),),
                    SizedBox(height: size.height * 0.03,),
                    checkBoxRow(),
                    SizedBox(height: size.height * 0.03,),
                    checkBoxRow(),
                    SizedBox(height: size.height * 0.03,),
                    checkBoxRow(),
                    SizedBox(height: size.height * 0.3,),
                    LongButton('Start application', "", Colors.white,
                            (){Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const ThanksScreen()));}, Colors.orange),
                    const SizedBox(height: 20,),
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
