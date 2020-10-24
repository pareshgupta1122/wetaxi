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
import 'package:wetaxi/constants/colour.dart';
import 'package:wetaxi/constants/hexaColour.dart';
import 'package:wetaxi/screens/driver_assigned.dart';
import 'package:wetaxi/screens/edit_profile.dart';
import 'package:wetaxi/screens/login_page.dart';
import 'package:wetaxi/screens/lost_item.dart';
import 'package:wetaxi/screens/paid_successful.dart';
import 'package:wetaxi/screens/rating.dart';
import 'package:wetaxi/screens/supportpage.dart';
import 'package:wetaxi/screens/termsAndConditions.dart';
import 'package:wetaxi/screens/trip_history.dart';

import 'chat_page.dart';

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
              color: Colors.white54,
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

                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            SizedBox(width: pWidth*.08),
                            Image.asset(
                              'assets/driver.png',
                              height: pHeight * 0.1,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(width: pWidth*.04),
                            Container(
                              height: pHeight * 0.15,
                              width: pWidth * 0.35,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  SizedBox(height: pHeight*0.01),

                                  Text(
                                    'Aviral Agarwal',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: pHeight * 0.021),
                                  ),

                                  SizedBox(height: pHeight*0.025),
                                  Text(
                                    '@Mobile number',
                                    style: GoogleFonts.montserrat(
                                        color:
                                            Colors.white.withOpacity(1),
                                        fontSize: pHeight * 0.016),
                                  ),


                                ],
                              ),
                            ),
                            SizedBox(width: pWidth*.1),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                    size: pWidth * 0.07,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(211, 57, 51, 1),),
                  ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: pWidth*0.03),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TripHistoryPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [




                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, right: 40),
                            child: Icon(
                              Icons.format_list_bulleted,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                          Text(
                            'All Trips',
                            style: GoogleFonts.montserrat(color:HexColorUtils.getColorFromHex(Colours.background),),
                          ),
                          SizedBox(width: pWidth*0.44),
                          Container(
                            height: pHeight*0.03,
                            decoration: BoxDecoration(
                              color: HexColorUtils.getColorFromHex(Colours.arrow),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Icon(

                              Icons.chevron_right,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(height: pHeight*0.01,
                      width: pWidth*0.8,
                      child: Divider(
                        color: Colors.grey,
                      ),),
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
                              Icons.group,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                          Text(
                            'Emergency Contacts',
                            style: GoogleFonts.montserrat(color: HexColorUtils.getColorFromHex(Colours.background),),
                          ),
                          SizedBox(width: pWidth*0.18),
                          Container(
                            height: pHeight*0.03,
                            decoration: BoxDecoration(
                              color: HexColorUtils.getColorFromHex(Colours.arrow),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Icon(

                              Icons.chevron_right,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(height: pHeight*0.01,
                      width: pWidth*0.8,
                      child: Divider(
                        color: Colors.grey,
                      ),),
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
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                          Text(
                            'Coupons',
                            style: GoogleFonts.montserrat(color: HexColorUtils.getColorFromHex(Colours.background),),
                          ),
                          SizedBox(width: pWidth*0.42),
                          Container(
                            height: pHeight*0.03,
                            decoration: BoxDecoration(
                              color: HexColorUtils.getColorFromHex(Colours.arrow),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Icon(

                              Icons.chevron_right,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(height: pHeight*0.01,
                    width: pWidth*0.8,
                    child: Divider(
                      color: Colors.grey,
                    ),),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfile()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, right: 40),
                            child: Icon(
                              Icons.mode_edit,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                          Text(
                            'Edit Profile',
                            style: GoogleFonts.montserrat(color: HexColorUtils.getColorFromHex(Colours.background),),
                          ),
                          SizedBox(width: pWidth*0.37),
                          Container(
                            height: pHeight*0.03,
                            decoration: BoxDecoration(
                              color: HexColorUtils.getColorFromHex(Colours.arrow),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Icon(

                              Icons.chevron_right,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                    SizedBox(height: pHeight*.01),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: pWidth*0.03),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  children: [
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
                              Icons.mail_outline,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                          Text(
                            'Invite Friends',
                            style: GoogleFonts.montserrat(color: HexColorUtils.getColorFromHex(Colours.background),),
                          ),
                          SizedBox(width: pWidth*0.33),
                          Container(
                            height: pHeight*0.03,
                            decoration: BoxDecoration(
                              color: HexColorUtils.getColorFromHex(Colours.arrow),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Icon(

                              Icons.chevron_right,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(height: pHeight*0.01,
                      width: pWidth*0.8,
                      child: Divider(
                        color: Colors.grey,
                      ),),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SupportPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, right: 40),
                            child: Icon(
                              Icons.headset_mic,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                          Text(
                            'Support & FAQ',
                            style: GoogleFonts.montserrat(color: HexColorUtils.getColorFromHex(Colours.background),),
                          ),
                          SizedBox(width: pWidth*0.305),
                          Container(
                            height: pHeight*0.03,
                            decoration: BoxDecoration(
                              color: HexColorUtils.getColorFromHex(Colours.arrow),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Icon(

                              Icons.chevron_right,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(height: pHeight*0.01,
                      width: pWidth*0.8,
                      child: Divider(
                        color: Colors.grey,
                      ),),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RatingPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, right: 40),
                            child: Icon(
                              Icons.stars,
                              color:HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                          Text(
                            'Rate Our App',
                            style: GoogleFonts.montserrat(color: HexColorUtils.getColorFromHex(Colours.background),),
                          ),
                          SizedBox(width: pWidth*0.32),
                          Container(
                            height: pHeight*0.03,
                            decoration: BoxDecoration(
                              color: HexColorUtils.getColorFromHex(Colours.arrow),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Icon(

                              Icons.chevron_right,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(height: pHeight*0.01,
                      width: pWidth*0.8,
                      child: Divider(
                        color: Colors.grey,
                      ),),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TermsAndConditionPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, right: 40),
                            child: Icon(
                              Icons.verified_user,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                          Text(
                            'Terms & Conditions',
                            style: GoogleFonts.montserrat(color:HexColorUtils.getColorFromHex(Colours.background), ),
                          ),
                          SizedBox(width: pWidth*0.21),
                          Container(
                            height: pHeight*0.03,
                            decoration: BoxDecoration(
                              color:HexColorUtils.getColorFromHex(Colours.arrow),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Icon(

                              Icons.chevron_right,
                              color:  HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(height: pHeight*0.01,
                      width: pWidth*0.8,
                      child: Divider(
                        color: Colors.grey,
                      ),),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, right: 40),
                            child: Icon(
                              Icons.arrow_forward,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),

                          Text(
                            'Log Out',
                            style: GoogleFonts.montserrat(color: HexColorUtils.getColorFromHex(Colours.background),),
                          ),
                          SizedBox(width: pWidth*0.435),
                          Container(
                            height: pHeight*0.03,
                            decoration: BoxDecoration(
                              color: HexColorUtils.getColorFromHex(Colours.arrow),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Icon(

                              Icons.chevron_right,
                              color: HexColorUtils.getColorFromHex(Colours.background),
                            ),
                          ),
                        ]),
                      ),
                    ),

                  ],
                ),
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
                    height: pHeight * 0.14,
                    child: Column(
                      children: [
                        Row(
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
                        SizedBox(height: pHeight*0.01,
                          width: pWidth*0.6,
                          child: Divider(
                            color: Colors.grey,
                          ),),
                        Row(
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
                      ],
                    ),
                  ),


                  Spacer(),
                  Container(
                    width: pWidth,
                    height: pHeight * 0.12,
                    child: Stack(
                      children: [
                        Container(

                          color: Color.fromRGBO(211, 57, 51, 1),
                          height: pHeight*0.17,
                        ),
                        Container(
                          width: pWidth,
                          height: pHeight * 0.12,
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
