import 'dart:async';

import 'package:flutter/material.dart';
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
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.red.withOpacity(0.7),
        title: Text('Driver On The Way'),
      ),
      body: Container(
        height: pHeight,
        width: pWidth,
        child: Column(
          children: [
            Container(
              height: pHeight * 0.1,
              color: Colors.red.withOpacity(0.7),
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    'Trade Center ',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.sync,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  Text(
                    ' Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              shadowColor: Colors.black,
              elevation: 10,
              child: Container(
                // color: Colors.cyan,
                width: MediaQuery.of(context).size.width,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Driver Details",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/mini.png",
                                height: pHeight * 0.07,
                              ),
                              Text(
                                "Comfort",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
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
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "Mini Cab - Black",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset(
                          "assets/driver.png",
                          height: pHeight * 0.06,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "George",
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                  borderRadius: BorderRadius.circular(10)),
              shadowColor: Colors.black,
              elevation: 10,
              child: Container(
                // color: Colors.cyan,
                width: MediaQuery.of(context).size.width * 0.97,
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
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          TripCompletedScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: pHeight * 0.07,
                                  width: pHeight * 0.07,
                                  child: Text(
                                    'SOS',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: pHeight * .025,
                                        color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(pHeight * 0.035))),
                                ),
                              ),
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
                                  size: pHeight * 0.05,
                                )),
                            Text(
                              'Call Driver',
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                                  size: pHeight * 0.05,
                                )),
                            Text(
                              'Chat',
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                                  size: pHeight * 0.05,
                                )),
                            Text(
                              'Call Driver',
                              style: TextStyle(fontWeight: FontWeight.bold),
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
            Expanded(
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
            SizedBox(
              height: pHeight * 0.03,
            )
          ],
        ),
      ),
    );
  }
}
