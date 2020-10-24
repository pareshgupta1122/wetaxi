import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetaxi/services/size_config.dart';

class SupportPage extends StatefulWidget {

  @override
  _SupportPageState createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {

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
                          'Support & FAQ',
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
            children: [
              Container(
                child: Text('How long can i drive in a day?',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: pHeight*0.022),),
              ),
              SizedBox(height: pHeight*0.02),
              Container(
                child: Text('You can driver continuously for 10 hrs maximum.',),
              ),
              SizedBox(
                height: pHeight*0.06,
              ),
              Container(
                child: Text('Do you provide multiple pickups or \ndrops?',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: pHeight*0.022),),
              ),
              SizedBox(height: pHeight*0.02),
              Container(
                child: Text('Sure, we can arrange multiple pickups or drops \nfor your itinerary. Please let us know about all\n the details of your itinerary and we can make \nthe arrangements.',),
              ),

            ],
          ),
        ),

              ],),
    ),
          Padding(
            padding:  EdgeInsets.only(bottom: pHeight*0.035),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: pHeight*0.01,

                  child: Divider(
                    color: Colors.grey,
                  ),),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.call,
                          color: Colors.green,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                          'Support',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: pHeight*0.023),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
  ]),

    );}
}
