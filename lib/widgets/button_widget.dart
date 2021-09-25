// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LongButton extends StatefulWidget {

  String text;
  String image;
  Color textColor;
  VoidCallback function;
  Color buttonColor;
  LongButton(this.text, this.image, this.textColor, this.function, this.buttonColor,
      {Key? key}) : super(key: key);


  @override
  _LongButtonState createState() => _LongButtonState();
}

class _LongButtonState extends State<LongButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: widget.function,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.image != "" ? widget.image == "facebook.svg" ?  SvgPicture.asset('assets/images/${widget.image}') :
            SizedBox(
                height: 20,
                width: 20,
                child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('assets/images/${widget.image}'))) : Container(),
            SizedBox(
              width: 10,
            ),
            Text(
              widget.text,
              style: TextStyle(
                  color: widget.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        style: TextButton.styleFrom(
          backgroundColor: widget.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
