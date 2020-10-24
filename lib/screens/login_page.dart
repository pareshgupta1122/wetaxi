import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wetaxi/Screens/otp_screen.dart';
import 'package:wetaxi/Screens/signup_page.dart';
import 'package:wetaxi/data/network/api_helper.dart';
import 'package:wetaxi/impl/impl.dart';
import 'package:wetaxi/services/size_config.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;

    SizeConfig().init(context);
    return Scaffold(
        body: Container(
      height: SizeConfig.blockSizeHeight * 100,
      width: MediaQuery.of(context).size.width * 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/bg1.png",
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Text(
              'Welcome to',
              style: TextStyle(fontSize: pHeight * 0.03),
            ),
            Image.asset(
              'assets/login_asset_1.png',
              height: pHeight * 0.13,
            ),
            Text(
              'We Taxi',
              style: TextStyle(
                  fontSize: pHeight * 0.04, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: pHeight * 0.03,
            ),
            Text(
              'The best way to navigate and discover new places',
              style: TextStyle(fontSize: pHeight * 0.016),
            ),
            Text(
              'Let\'s get started!',
              style: TextStyle(fontSize: pHeight * 0.016),
            ),
            Spacer(),
            Padding(
              padding:  EdgeInsets.only(left: pWidth*0.12),
              child: Text(
                'CONTINUE WITH MOBILE:',
                style: TextStyle(fontSize: pHeight * 0.017),
              ),
            ),
            SizedBox(
              height: pHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: pWidth * 0.1,
                ),
                Container(

                  width: pWidth * 0.15,
                  height: pHeight * 0.065,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueGrey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    '+91',
                    style: TextStyle(fontSize: pHeight * 0.02),
                  ),
                ),
                SizedBox(
                  width: pWidth * 0.05,
                ),
                Container(
                  alignment: Alignment.center,
                  width: pWidth * 0.6,
                  height: pHeight * 0.065,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueGrey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: pWidth * 0.035,
                            bottom: pHeight * 0.02,
                            top: pHeight * 0.02,
                            right: pWidth * 0.02),
                        hintText: 'Enter Mobile Number', hintStyle: TextStyle(color: Colors.black),),

                  ),
                ),
                SizedBox(
                  width: pWidth * 0.1,
                ),
              ],
            ),
            SizedBox(
              height: pHeight * 0.02,
            ),
            InkWell(
              onTap: () {
//                getPlatform();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OTPScreen(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: pWidth * 0.8,
                height: pHeight * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.redAccent),
                child: Text(
                  'LOGIN',
                  style:
                      TextStyle(color: Colors.white, fontSize: pHeight * 0.02),
                ),
              ),
            ),
            SizedBox(
              height: pHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account yet? ',
                  style: TextStyle(fontSize: pHeight * 0.016),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: pHeight * 0.016,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Spacer()
          ],
        ),
      ),
    ));
  }
}
