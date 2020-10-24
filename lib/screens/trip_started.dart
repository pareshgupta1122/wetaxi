import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:wetaxi/Screens/trip_completed.dart';

class TripStartedScreen extends StatefulWidget {
  @override
  _TripStartedScreenState createState() => _TripStartedScreenState();
}

class _TripStartedScreenState extends State<TripStartedScreen> {
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
              Container(
                height: pHeight * 0.1,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Cab Booking',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: pHeight * 0.025),
                    ),
                  ],
                ),
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
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: pWidth * 0.03),
                        child: Text(
                          'Trip Details',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: pHeight * 0.017),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TripCompletedScreen()));
                                },
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'assets/sos.png',
                                      height: pHeight * 0.05,
                                    )),
                              ),
                              Text(
                                'SOS',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ), // Circle,
                          Column(
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
                          Column(
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
                  child: Container(
                    child: GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: _kGooglePlex,
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                      },
                      myLocationButtonEnabled: false,
                    ),
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
