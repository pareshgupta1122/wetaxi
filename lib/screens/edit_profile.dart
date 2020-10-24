import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetaxi/services/size_config.dart';

class EditProfile extends StatefulWidget {
  var contentPadding = EdgeInsets.only(left: SizeConfig.blockSizeWidth * 2);
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
//      appBar: AppBar(
//        title: Text(
//          'Refer and Earn',
//          style: GoogleFonts.montserrat()(color: Colors.white),
//        ),
//        centerTitle: true,
//        leading: GestureDetector(
//          onTap: () => Navigator.pop(context),
//          child: Icon(Icons.arrow_back_ios),
//        ),
//        actions: [
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Icon(
//              Icons.notifications_none,
//              color: Colors.white,
//            ),
//          ),
//        ],
//        flexibleSpace: Container(
//          decoration: new BoxDecoration(
//            color: Color.fromRGBO(212, 56, 57, 1),
//          ),
//        ),
//      ),
      body: Stack(

        children: <Widget>[
          Container(
            color: Color.fromRGBO(211, 57, 51, 1),
            height: pHeight*0.15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: pHeight * 0.07,
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
                    Padding(
                      padding: const EdgeInsets.only(left:60),
                      child: Container(
                        child: Center(
                          child: Text(
                            'Edit Profile',
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: pHeight * 0.025),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
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
                  height: pHeight * 0.035,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,

                  child: Image.asset(
                    'assets/driver.png',
                    height: pHeight * 0.1,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height:pHeight*0.02 ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(0,0,pWidth*0.45,0),
                  child: Container(
                    child: Text('Personal Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: pHeight*0.025),),
                  ),
                ),
                SizedBox(height:pHeight*0.02 ),
nameTextField(),
                SizedBox(height:pHeight*0.02 ),
                emailTextField(),
                SizedBox(height:pHeight*0.02 ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.fromLTRB( pWidth*0.06,0,0,pHeight*0.01),
                      child: Container(
                        child: Text('Mobile Number*'),
                      ),
                    ),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Container(decoration: BoxDecoration(

                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                            width: SizeConfig.blockSizeWidth * 15,
                            height: SizeConfig.blockSizeHeight * 7,
                            child: Center(
                              child: TextField(
                                  enabled: false,
                                  decoration: InputDecoration(
                                      labelText: "+91",
                                      labelStyle: TextStyle(

                                          color: Colors.black),
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(6.0),
                                        ),
                                      ))),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeWidth * 5,
                        ),
                        Container(
                          width: SizeConfig.blockSizeWidth * 68,
                          child: mobileNumberTextField(),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: pHeight * 0.08,
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
                      left: 160.0,
                      right: 160.0,
                    ),
                    child: Text(
                      'Save',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
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
  Widget nameTextField() {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.fromLTRB( pWidth*0.06,0,0,pHeight*0.01),
          child: Container(
            child: Text('First Name*'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: TextFormField(

            cursorColor: Colors.black,

            keyboardType: TextInputType.text,
            decoration: InputDecoration(

                hintText: "First Name",
                hintStyle: TextStyle(color: Colors.black),
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(
                    left: pWidth * 0.03,
                    bottom: pHeight * 0.02,
                    top: pHeight * 0.02,
                    right: pWidth * 0.02),
                border: OutlineInputBorder(

                  borderRadius: const BorderRadius.all(
                    const Radius.circular(06.0),

                  ),
                )),
          ),
        ),
        SizedBox(height:pHeight*0.02 ),
        Padding(
          padding:  EdgeInsets.fromLTRB( pWidth*0.06,0,0,pHeight*0.01),
          child: Container(
            child: Text('Last Name*'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: TextFormField(
            cursorColor: Colors.black,

            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: "Last Name",
                hintStyle: TextStyle(color: Colors.black),
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(
                    left: pWidth * 0.03,
                    bottom: pHeight * 0.02,
                    top: pHeight * 0.02,
                    right: pWidth * 0.02),
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(6.0),
                  ),
                )),
          ),
        ),
      ],
    );
  }

  Widget emailTextField() {

    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    SizedBox(height:pHeight*0.02 );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    Padding(
    padding:  EdgeInsets.fromLTRB( pWidth*0.06,0,0,pHeight*0.01),
    child: Container(
    child: Text('Enter Email*'),
    ),
    ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: TextFormField(
            cursorColor: Colors.black,
            keyboardType: TextInputType.emailAddress,

            decoration: InputDecoration(
                hintText: "Enter Email",
                hintStyle: TextStyle(color: Colors.black),
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(
                    left: pWidth * 0.03,
                    bottom: pHeight * 0.02,
                    top: pHeight * 0.02,
                    right: pWidth * 0.02),
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(6.0),
                  ),
                )),
          ),
        ),
      ],
    );
  }


  Widget mobileNumberTextField() {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return TextFormField(
      cursorColor: Colors.black,
      keyboardType: TextInputType.phone,

      decoration: InputDecoration(
          hintText: "Enter Mobile Number",
          fillColor: Colors.white,
          contentPadding: EdgeInsets.only(
              left: pWidth * 0.04,
              bottom: pHeight * 0.02,
              top: pHeight * 0.02,
              right: pWidth * 0.02),
          hintStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(6.0),
            ),
          )),
    );
  }
}
