import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:wetaxi/Screens/trip_started.dart';
import 'package:wetaxi/screens/chat_page.dart';

class CabBookedScreen extends StatefulWidget {
  @override
  _CabBookedScreenState createState() => _CabBookedScreenState();
}

int scheduleToggle = 0;

class _CabBookedScreenState extends State<CabBookedScreen> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(28.375694, 79.435959),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(28.375694, 79.435959),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    double pHeight = MediaQuery.of(context).size.height;
    double pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        Container(

          color: Color.fromRGBO(211, 57, 51, 1),
          height: pHeight*0.2,
        ),
        Container(
          height: pHeight,
          width: pWidth,
          child: Column(
            children: [
              SizedBox(height: pHeight * 0.03),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                    height: pHeight * 0.1,
                    color: Colors.transparent,
                    child: Row(


                      children: [
                        Text(
                          'Your Driver is Arrived',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: pHeight * 0.025),
                        ),
                      ],
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
              Container(
                color: Colors.transparent,
                child: Row(
                  children: [
                    Spacer(),
                    InkWell(
                        child: Image.asset(
                          'assets/return1.png',
                          height: pHeight * 0.03,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        }),
                    Spacer(),
                    Text(
                      'Trade Center ',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: pHeight * 0.02),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                    Image.asset(
                      'assets/swap_trans.png',
                      height: pHeight * 0.025,
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                    Text(
                      ' Home',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: pHeight * 0.02),
                    ),
                    Spacer(flex: 3),
                  ],
                ),
              ),
              SizedBox(
                height: pHeight * 0.05,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                shadowColor: Colors.black,
                elevation: 10,
                child: Container(
                  // color: Colors.cyan,
                  width: MediaQuery.of(context).size.width * 0.95,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Driver Details",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/mini.png",
                                  height: pHeight * 0.06,
                                ),
                                Text(
                                  "Comfort",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "NU 20 TMV",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: pHeight * 0.017),
                            ),
                          ),
                          Text(
                            "Mini Cab - Black",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: pHeight * 0.015),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: pHeight * 0.06,
                            width: pHeight * 0.06,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(pHeight * 0.03))),
                            child: CircleAvatar(
                                radius: pHeight * 0.06,
                                backgroundImage: AssetImage(
                                  "assets/driver.png",
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "George",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SmoothStarRating(
                              allowHalfRating: false,
                              onRated: (v) {},
                              starCount: 5,
                              rating: 3,
                              size: pWidth * 0.04,
                              isReadOnly: true,
                              color: Colors.green,
                              borderColor: Colors.green,
                              spacing: 0.0)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                shadowColor: Colors.black,
                elevation: 10,
                child: Container(
                  // color: Colors.cyan,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: pHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Spacer(flex: 1),
                          Text(
                            "Add Ons",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[850]),
                          ),
                          Spacer(flex: 4),
                          Container(
                            child: CircleAvatar(
                              radius: pHeight * 0.023,
                              backgroundColor: Color.fromRGBO(212, 56, 57, 1),
                              foregroundColor: Colors.white,
                              child: Icon(Icons.directions_walk),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(pHeight * 0.02)),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset.zero,
                                    color: Colors.black.withOpacity(0.4),
                                    blurRadius: 10,
                                    spreadRadius: 1)
                              ],
                            ),
                          ),
                          Spacer(flex: 1),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Wheel Chair",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    fontSize: pHeight * 0.018),
                              ),
                              Text(
                                "charges extra",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w100, fontSize: 13),
                              ),
                            ],
                          ),
                          Spacer(flex: 1),

                          Text(
                            "\$ 0.5",
                            style: GoogleFonts.montserrat(
                                color: Color.fromRGBO(212, 56, 57, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: pHeight * 0.03),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          // CircleAvatar(),
                          // CircleAvatar(),
                        ],
                      ),
                      SizedBox(
                        height: pHeight * 0.02,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                shadowColor: Colors.black,
                elevation: 10,
                child: Container(
                  // color: Colors.cyan,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: pHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: [
                              Text(
                                'Trip Details',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    fontSize: pHeight * 0.017),
                              ),
                              SizedBox(
                                height: pHeight * 0.005,
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: pHeight * 0.01,
                                      horizontal: pHeight * 0.02),
                                  child: Text(
                                    '5678',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: pHeight * .03,
                                        color: Colors.white),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset.zero,
                                          color: Colors.grey,
                                          blurRadius: 20,
                                          spreadRadius: 2)
                                    ],
                                    color: Color.fromRGBO(212, 56, 57, 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(pHeight * 0.03))),
                              ),
                              Text(
                                'OTP',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ), // Circle,
                          InkWell(
                            onTap: (){

                            },
                            child: Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.phone,
                                      color: Colors.green,
                                      size: pHeight * 0.045,
                                    )),
                                Text(
                                  'Call Driver',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatPage()));
                            },
                            child: Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.chat,
                                      color: Colors.blue,
                                      size: pHeight * 0.045,
                                    )),
                                Text(
                                  'Chat',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.share,
                                    color: Colors.purple,
                                    size: pHeight * 0.045,
                                  )),
                              Text(
                                'Call Driver',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: pHeight * 0.02,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: pHeight * 0.01,
              ),
              Expanded(
                child: Container(
                  width: pWidth * 0.95,
                  child: Stack(
                    children: [
                      GoogleMap(
                        mapType: MapType.normal,
                        initialCameraPosition: _kGooglePlex,
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                        myLocationButtonEnabled: false,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TripStartedScreen(),
                            ),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(pWidth * 0.05),
                              child: Container(
                                alignment: Alignment.center,
                                height: pHeight * 0.065,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset.zero,
                                          color: Colors.grey,
                                          blurRadius: 20,
                                          spreadRadius: 2)
                                    ],
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(pHeight * 0.05))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Spacer(),
                                    Image.asset(
                                      'assets/cancel_ride.png',
                                      height: pHeight * 0.03,
                                    ),
                                    SizedBox(
                                      width: pWidth * 0.05,
                                    ),
                                    Text(
                                      'Cancel Ride',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: pHeight * 0.025,
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: pHeight * 0.03,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
