import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentalflutterapp/constants/constant.dart';
import 'package:rentalflutterapp/widgets/button_widget.dart';
import 'package:select_form_field/select_form_field.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({Key? key}) : super(key: key);

  @override
  _CompleteProfileState createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  Widget TextFieldStyle(String hint, String textType) {
    return TextField(
      maxLines: 1,
      keyboardType: textType == "number" ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        enabledBorder: Constants.inputBorderStyle,
        focusedBorder: Constants.inputBorderStyle,
        fillColor: Colors.white60,
        filled: true,
        labelText: hint,
        labelStyle: const TextStyle(color: Color(0xFF8E93A3), fontSize: 16.0),
      ),
    );
  }

  Widget SelectField(items, String hint) {
    return SelectFormField(
      decoration: InputDecoration(
        enabledBorder: Constants.inputBorderStyle,
        focusedBorder: Constants.inputBorderStyle,
        fillColor: Colors.white60,
        suffixIcon: const Icon(
          Icons.arrow_forward_ios_sharp,
          size: 15,
          color: Colors.grey,
        ),
        filled: true,
        labelText: hint,
        labelStyle: const TextStyle(color: Color(0xFF8E93A3), fontSize: 16.0),
      ),
      initialValue: 'circle',
      labelText: 'Corporate Events',
      style: const TextStyle(fontSize: 14),
      items: items,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController birthdayController = TextEditingController();

    final List<Map<String, dynamic>> _items = [
      {
        'value': 'boxValue',
        'label': 'Box Label',
        'icon': const Icon(Icons.stop),
      },
      {
        'value': 'circleValue',
        'label': 'Circle Label',
        'icon': const Icon(Icons.fiber_manual_record),
        'textStyle': const TextStyle(color: Colors.red),
      },
      {
        'value': 'starValue',
        'label': 'Star Label',
        'enable': false,
        'icon': const Icon(Icons.grade),
      },
    ];

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: const Color(0xFFE5E4E4),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.west,
                    color: Colors.orange,
                    size: 25,
                  )),
              SizedBox(height: size.height * 0.01,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Complete Profile",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    const Text(
                      "Tell us more about yourself",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SelectField(_items, "Date of Birthday"),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFieldStyle('Phone Number', 'number'),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFieldStyle('Street', 'text'),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFieldStyle('City', 'text'),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SelectField(_items, "State"),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(child: TextFieldStyle('Zip', 'number')),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SelectField(_items, "'How far are you willing to drive?'"),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    LongButton(
                        "Continue", "", Colors.white, () {}, Colors.orange),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
