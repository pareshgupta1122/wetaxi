import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class EmergencyNumberScreen extends StatefulWidget {
  @override
  _EmergencyNumberScreenState createState() => _EmergencyNumberScreenState();
}

class _EmergencyNumberScreenState extends State<EmergencyNumberScreen> {
  TextEditingController phone = new TextEditingController(text: '+91');

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(

            height: pHeight*0.17,
            color: Color.fromRGBO(211, 57, 51, 1),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: pHeight * 0.045,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          'Emergency number',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: pHeight * 0.025),
                        ),
                      ),
                    ),
                   
                    IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: pHeight * 0.08,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/emergency.png',
                    scale: 2.5,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'Add two emergency contact numbers',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(fontSize: pHeight * 0.02),
                    ),
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.green,
                      size: pHeight * 0.035,
                    ),
                    SizedBox(
                      width: pWidth * 0.1,
                    ),
                    Text(
                      '+91 9876543210',
                      style: GoogleFonts.montserrat(fontSize: pHeight * 0.03),
                    ),
                  ],
                ),
                SizedBox(
                  height: pHeight * 0.1,
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
                                bottom: pHeight * 0.015,
                                top: pHeight * 0.03,
                                right: pWidth * 0.02),
                            hintText: 'Enter Your Number'),
                      ),
                    ),
                    SizedBox(
                      width: pWidth * 0.1,
                    ),
                  ],
                ),
                SizedBox(
                  height: pHeight * 0.15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color.fromRGBO(179, 57, 51, 1),
                  ),
                  //UIColor(red: 179/255, green: 57/255, blue: 51/255)
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      bottom: 15.0,
                      left: 60.0,
                      right: 60.0,
                    ),
                    child: Text(
                      'Save',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: pHeight * 0.02),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
