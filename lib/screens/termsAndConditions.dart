import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetaxi/services/size_config.dart';

class TermsAndConditionPage extends StatefulWidget {

  @override
  _TermsAndConditionPageState createState() => _TermsAndConditionPageState();
}

class _TermsAndConditionPageState extends State<TermsAndConditionPage> {

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(

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
                      Container(
                        child: Center(
                          child: Text(
                            'Terms And Conditions',
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
                    height: pHeight*0.07,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text('Terms & Conditions for Services',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: pHeight*0.022),),
                        ),
                        SizedBox(height: pHeight*0.02),
                        Container(
                          child: Text('XYZ Private Limited and their affiliates \n(including its parent company , referred to as \n ("we", "us", "our") are committed to \n protecting and respecting your privacy and\n providing with the information, options and \n choices necessary for you to control how we \n use your information. This privacy policy \n describes how we collect and use personal \n information to provide services operated by \n or on behalf of us. This policy applies to users \n of our website ("Website" or "Site") or mobile \n  application .'),
                        ),
                        SizedBox(
                          height: pHeight*0.06,
                        ),
                        Container(
                          child: Text('1. Registration',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: pHeight*0.022),),
                        ),
                        SizedBox(height: pHeight*0.02),
                        Container(
                          child: Text('By engaging with the Site and/or App, you \n  acknowledge you have read and understood\n this privacy policy.'),
                        ),

                      ],
                    ),
                  ),

                ],),
            ),

          ],)

    );}
}
