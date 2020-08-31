import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double pHeight = MediaQuery.of(context).size.height;
    double pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
                'Sign Up',
                style: TextStyle(fontSize: pHeight * 0.03),
              ),
              SizedBox(
                height: pHeight * 0.01,
              ),
              Text(
                'Enter your Sign Up details !',
                style: TextStyle(fontSize: pHeight * 0.016),
              ),
              Spacer(),
              Container(
                alignment: Alignment.center,
                width: pWidth * 0.8,
                height: pHeight * 0.05,
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
                          left: pWidth * 0.02,
                          bottom: pHeight * 0.02,
                          top: pHeight * 0.01,
                          right: pWidth * 0.02),
                      hintText: 'Enter your name'),
                ),
              ),
              SizedBox(
                height: pHeight * 0.04,
              ),
              Container(
                alignment: Alignment.center,
                width: pWidth * 0.8,
                height: pHeight * 0.05,
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
                          left: pWidth * 0.02,
                          bottom: pHeight * 0.02,
                          top: pHeight * 0.01,
                          right: pWidth * 0.02),
                      hintText: 'Enter email'),
                ),
              ),
              SizedBox(
                height: pHeight * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: pWidth * 0.1,
                  ),
                  Container(
                    width: pWidth * 0.15,
                    height: pHeight * 0.05,
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
                    height: pHeight * 0.05,
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
                              left: pWidth * 0.02,
                              bottom: pHeight * 0.02,
                              top: pHeight * 0.01,
                              right: pWidth * 0.02),
                          hintText: 'Enter You Number'),
                    ),
                  ),
                  SizedBox(
                    width: pWidth * 0.1,
                  ),
                ],
              ),
              Spacer(),
              Container(
                alignment: Alignment.center,
                width: pWidth * 0.8,
                height: pHeight * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.redAccent),
                child: Text(
                  'VERIFY',
                  style:
                      TextStyle(color: Colors.white, fontSize: pHeight * 0.02),
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
