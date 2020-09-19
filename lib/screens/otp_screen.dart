import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:wetaxi/Screens/signup_page.dart';

import 'intro_screens.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: pHeight,
              width: pWidth,
              child: Image.asset(
                'assets/bg1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: pHeight * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Verify Mobile Number',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontSize: pHeight * 0.035),
                  ),
                ],
              ),
              SizedBox(
                height: pHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: pWidth,
                    child: Text(
                      'We have sent the OTP to your number 9xxxxxxxx0,\nGo back to change number.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.65),
                          fontFamily: 'Roboto',
                          fontSize: pHeight * 0.02),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: pHeight * 0.035,
              ),
              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width * 0.8,
                fieldWidth: 60,
                style: TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
              SizedBox(
                height: pHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Not yet received OTP?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.75),
                        fontFamily: 'Roboto',
                        fontSize: pHeight * 0.018),
                  ),
                  SizedBox(
                    width: pWidth * 0.01,
                  ),
                  Text(
                    'Resend',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.75),
                        fontFamily: 'Roboto',
                        fontSize: pHeight * 0.02),
                  ),
                ],
              ),
              SizedBox(
                height: pHeight * 0.1,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IntroScreen1(),
                    ),
                  );
                },
                child: Container(
                  width: pWidth * 0.85,
                  height: pHeight * 0.065,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.red),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'VERIFY',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: pHeight * 0.025),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
