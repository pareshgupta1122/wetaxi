import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wetaxi/Screens/fare_details.dart';

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
      print('hahahaha--------------------');

      // Either the permission was already granted before or the user just granted it.
    } else {
      print('hihiihi---------------------');
    }
    if (await Permission.locationWhenInUse.request().isGranted) {
      print('hahahaha--------------------');

      // Either the permission was already granted before or the user just granted it.
    } else {
      print('hihiihi---------------------');
    }
// You can request multiple permissions at once.

    if (status.isUndetermined) {
      // We didn't ask for permission yet.
    }

// You can can also directly ask the permission about its status.
    if (await Permission.location.isRestricted) {
      // The OS restricts access, for example because of parental controls.
    }
  }

  getPermi() async {
    print(
        '===================================================================');
    Map<Permission, PermissionStatus> statuses =
        await [Permission.location, Permission.locationWhenInUse].request();
    print(statuses[Permission.location]);
  }

  int toggle1 = 1;
  int toggle2 = 0;
  int toggle3 = 0;
  @override
  void initState() {
    // getPermi();
    getStatus();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double pHeight = MediaQuery.of(context).size.height;
    double pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(0.7),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          height: pHeight,
          width: pWidth * 0.8,
          color: Colors.red,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
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
                    width: pWidth * 0.8,
                    decoration: BoxDecoration(
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
                                hintText: 'Go from?'),
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
                                          style: TextStyle(
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
                                          style: TextStyle(
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
                                          style: TextStyle(
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
                                          style: TextStyle(
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
                                          style: TextStyle(
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
                                          style: TextStyle(
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
                                border: Border.all(width: 2, color: Colors.red),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(pHeight * 0.02))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Get Fare',
                                  style: TextStyle(
                                      fontSize: pWidth * 0.03,
                                      color: Colors.red),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: pWidth * 0.04,
                                  color: Colors.red,
                                )
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
          )
        ],
      ),
    );
  }
}
