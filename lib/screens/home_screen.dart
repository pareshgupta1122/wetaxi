import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wetaxi/Screens/all_trips.dart';
import 'package:wetaxi/Screens/coupons_screen.dart';
import 'package:wetaxi/Screens/emergency_number_screen.dart';
import 'package:wetaxi/Screens/fare_details.dart';
import 'package:wetaxi/Screens/refer_and_earn_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  void getStatus() async {
    var status = await Permission.location.status;
    if (await Permission.location.request().isGranted) {
      print('Permission Granted');

      // Either the permission was already granted before or the user just granted it.
    } else {
      print('Permission Denied');
    }
    if (await Permission.locationWhenInUse.request().isGranted) {
      print('Permission Granted');
    } else {
      print('Permission Denied');
    }
  }

  int toggle1 = 1;
  int toggle2 = 0;
  int toggle3 = 0;
  @override
  void initState() {
    getStatus();

    super.initState();
  }

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var cxt = context;
    double pHeight = MediaQuery.of(context).size.height;
    double pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _drawerKey,
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child: SizedBox(
          width: pWidth,
          child: Drawer(
            // key: _drawerKey,
            child: Container(
              height: pHeight,
              color: Color(0xFF0D3A7E).withOpacity(0.7),
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/driver.png',
                              height: pHeight * 0.1,
                              fit: BoxFit.fill,
                            ),
                            Container(
                              height: pHeight * 0.15,
                              width: pWidth * 0.35,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: Colors.white,
                                          size: pWidth * 0.07,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(flex: 3),
                                  Text(
                                    'Aviral Agarwal',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: pHeight * 0.02),
                                  ),
                                  Spacer(),
                                  Text(
                                    '@email',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: pHeight * 0.015),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '@phone number',
                                        style: GoogleFonts.montserrat(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            fontSize: pHeight * 0.015),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/bg_drawer.png'),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    height: pHeight * 0.1,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 40),
                          child: Icon(
                            Icons.clear_all,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'All Trips',
                          style: GoogleFonts.montserrat(color: Colors.white),
                        ),
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmergencyNumberScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 40),
                          child: Icon(
                            Icons.contact_phone,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Emergency Number',
                          style: GoogleFonts.montserrat(color: Colors.white),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: pHeight * 0.05,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CouponsScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 40),
                          child: Icon(
                            Icons.card_giftcard,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Coupons',
                          style: GoogleFonts.montserrat(color: Colors.white),
                        ),
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReferAndEarnScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 40),
                          child: Icon(
                            Icons.stars,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Refer and Earn',
                          style: GoogleFonts.montserrat(color: Colors.white),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: pHeight * 0.05,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 40),
                          child: Icon(
                            Icons.camera,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Support',
                          style: GoogleFonts.montserrat(color: Colors.white),
                        ),
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 40),
                          child: Icon(
                            Icons.info_outline,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'About Us',
                          style: GoogleFonts.montserrat(color: Colors.white),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: pHeight * 0.2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 40),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Log Out',
                          style: GoogleFonts.montserrat(color: Colors.white),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            myLocationButtonEnabled: false,
          ),
          Container(
            height: pHeight,
            width: pWidth,
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: pHeight * 0.02,
                  ),
                  Container(
                    height: pHeight * 0.05,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              _drawerKey.currentState.openDrawer();
                            },
                            child: Icon(Icons.menu),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: pWidth * 0.8,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: pHeight * 0.05,
                    child: Row(
                      children: [
                        SizedBox(
                          width: pWidth * 0.025,
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: pWidth * 0.025,
                        ),
                        Container(
                          width: 1,
                          height: pHeight * 0.03,
                          color: Colors.grey,
                        ),
                        Container(
                          width: pWidth * 0.55,
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
                                    top: pHeight * 0.02,
                                    right: pWidth * 0.02),
                                hintText: 'Go from?'),
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: pHeight * 0.02,
                  ),
                  Container(
                    width: pWidth * 0.8,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: pHeight * 0.05,
                    child: Row(
                      children: [
                        SizedBox(
                          width: pWidth * 0.025,
                        ),
                        Icon(
                          Icons.flag,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: pWidth * 0.025,
                        ),
                        Container(
                          width: 1,
                          height: pHeight * 0.03,
                          color: Colors.grey,
                        ),
                        Container(
                          width: pWidth * 0.55,
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
                                    top: pHeight * 0.02,
                                    right: pWidth * 0.02),
                                hintText: 'Go to?'),
                          ),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: pWidth,
                    height: pHeight * 0.1,
                    child: Stack(
                      children: [
                        Container(
                          width: pWidth,
                          child: Image.asset(
                            'assets/bottom_bar_bg.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: pWidth,
                          height: pHeight * 0.1,
                          color: Colors.red.withOpacity(0.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              toggle1 == 1
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            if (toggle1 == 0)
                                              setState(() {
                                                toggle1 = 1;
                                                print(toggle1);
                                              });
                                            else
                                              setState(() {
                                                toggle1 = 0;
                                                print(toggle1);
                                              });
                                          },
                                          child: Container(
                                            height: pHeight * 0.06,
                                            width: pHeight * 0.06,
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(
                                                        pHeight * 0.04))),
                                            child:
                                                Image.asset('assets/mini.png'),
                                          ),
                                        ),
                                        Text(
                                          'Comfort',
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              color: toggle1 == 1
                                                  ? Colors.white
                                                  : Colors.black),
                                        )
                                      ],
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            if (toggle1 == 0)
                                              setState(() {
                                                toggle1 = 1;
                                                print(toggle1);
                                              });
                                            else
                                              setState(() {
                                                toggle1 = 0;
                                                print(toggle1);
                                              });
                                          },
                                          child: Container(
                                            height: pHeight * 0.06,
                                            width: pHeight * 0.06,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      pHeight * 0.04),
                                                ),
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 1)),
                                            child:
                                                Image.asset('assets/mini.png'),
                                          ),
                                        ),
                                        Text(
                                          'Comfort',
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              color: toggle1 == 1
                                                  ? Colors.white
                                                  : Colors.black),
                                        )
                                      ],
                                    ),
                              toggle2 == 1
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            if (toggle2 == 0)
                                              setState(() {
                                                toggle2 = 1;
                                                print(toggle2);
                                              });
                                            else
                                              setState(() {
                                                toggle2 = 0;
                                                print(toggle2);
                                              });
                                          },
                                          child: Container(
                                            height: pHeight * 0.06,
                                            width: pHeight * 0.06,
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(
                                                        pHeight * 0.04))),
                                            child:
                                                Image.asset('assets/mini.png'),
                                          ),
                                        ),
                                        Text(
                                          'Comfort XL',
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              color: toggle2 == 1
                                                  ? Colors.white
                                                  : Colors.black),
                                        )
                                      ],
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            if (toggle2 == 0)
                                              setState(() {
                                                toggle2 = 1;
                                                print(toggle2);
                                              });
                                            else
                                              setState(() {
                                                toggle2 = 0;
                                                print(toggle2);
                                              });
                                          },
                                          child: Container(
                                            height: pHeight * 0.06,
                                            width: pHeight * 0.06,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      pHeight * 0.04),
                                                ),
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 1)),
                                            child:
                                                Image.asset('assets/mini.png'),
                                          ),
                                        ),
                                        Text(
                                          'Comfort XL',
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              color: toggle2 == 1
                                                  ? Colors.white
                                                  : Colors.black),
                                        )
                                      ],
                                    ),
                              toggle3 == 1
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            if (toggle3 == 0)
                                              setState(() {
                                                toggle3 = 1;
                                                print(toggle3);
                                              });
                                            else
                                              setState(() {
                                                toggle3 = 0;
                                                print(toggle3);
                                              });
                                          },
                                          child: Container(
                                            height: pHeight * 0.06,
                                            width: pHeight * 0.06,
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(
                                                        pHeight * 0.04))),
                                            child:
                                                Image.asset('assets/mini.png'),
                                          ),
                                        ),
                                        Text(
                                          'Executive',
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              color: toggle3 == 1
                                                  ? Colors.white
                                                  : Colors.black),
                                        )
                                      ],
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            if (toggle3 == 0)
                                              setState(() {
                                                toggle3 = 1;
                                                print(toggle3);
                                              });
                                            else
                                              setState(() {
                                                toggle3 = 0;
                                                print(toggle3);
                                              });
                                          },
                                          child: Container(
                                            height: pHeight * 0.06,
                                            width: pHeight * 0.06,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      pHeight * 0.04),
                                                ),
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 1)),
                                            child:
                                                Image.asset('assets/mini.png'),
                                          ),
                                        ),
                                        Text(
                                          'Executive',
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              color: toggle3 == 1
                                                  ? Colors.white
                                                  : Colors.black),
                                        )
                                      ],
                                    ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: pWidth,
                    height: pHeight * 0.08,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: pWidth * 0.6,
                          child: Text(
                            'Comfortable for 4 seater available in 8 mins',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FareDetailsScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: pWidth * 0.2,
                            height: pHeight * 0.04,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                border: Border.all(width: 2, color: Colors.red),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(pHeight * 0.02))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Spacer(flex: 3),
                                Text(
                                  'Get Fare',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: pWidth * 0.03,
                                      color: Colors.red),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: pWidth * 0.04,
                                  color: Colors.red,
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: pHeight * 0.16,
            left: pWidth * 0.83,
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]),
              child: Image.asset(
                'assets/swap.png',
                height: pHeight * 0.04,
              ),
            ),
          )
        ],
      ),
    );
  }
}
