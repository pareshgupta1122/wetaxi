import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetaxi/Screens/cab_booked_screen.dart';

class FareDetailsScreen extends StatefulWidget {
  @override
  _FareDetailsScreenState createState() => _FareDetailsScreenState();
}

int scheduleToggle = 0;

class _FareDetailsScreenState extends State<FareDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double pHeight = MediaQuery.of(context).size.height;
    double pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
//      appBar: AppBar(
//        actions: [
//          IconButton(
//            icon: Icon(
//              Icons.notifications,
//              color: Colors.white,
//            ),
//          )
//        ],
//        centerTitle: true,
//        backgroundColor: Colors.red.withOpacity(0.7),
//        title: Text('Cab Booking'),
//      ),
      body: Stack(
        children: <Widget>[
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Local Booking',
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
                SizedBox(height: pHeight * 0.02),
                Expanded(
                  child: Container(
                    child: ListView(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          shadowColor: Colors.black,
                          elevation: 10,
                          child: Container(
                            // color: Colors.cyan,
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Spacer(),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Service Type",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.bold),
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
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(flex: 5),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Spacer(),
                                    Text(
                                      "Approx.Total Fare",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "including Fare",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 13),
                                    ),
                                    Spacer(),
                                    Text(
                                      "\$17.5",
                                      style: GoogleFonts.montserrat(
                                          color: Color.fromRGBO(212, 56, 57, 1),
                                          fontWeight: FontWeight.w500,
                                          fontSize: pHeight * 0.03),
                                    ),
                                    Spacer()
                                  ],
                                ),
                                Spacer(),
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
                            width: MediaQuery.of(context).size.width * 0.97,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: pHeight * 0.02,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Spacer(),
                                    Container(
                                      width: pWidth * 0.5,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Add Ons",
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[850]),
                                          ),
                                          SizedBox(
                                            height: pHeight * 0.01,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              pHeight * 0.02)),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        offset: Offset.zero,
                                                        color: Colors.black
                                                            .withOpacity(0.4),
                                                        blurRadius: 10,
                                                        spreadRadius: 1)
                                                  ],
                                                ),
                                                child: CircleAvatar(
                                                  radius: 24,
                                                  backgroundColor: Colors.grey,
                                                  child: CircleAvatar(
                                                    radius: 20,
                                                    backgroundColor:
                                                        Colors.white,
                                                    foregroundColor:
                                                        Colors.black,
                                                    child: Text(
                                                      "None",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontSize: 13,
                                                              color:
                                                                  Colors.grey,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              pHeight * 0.02)),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        offset: Offset.zero,
                                                        color: Colors.black
                                                            .withOpacity(0.4),
                                                        blurRadius: 10,
                                                        spreadRadius: 1)
                                                  ],
                                                ),
                                                child: CircleAvatar(
                                                  radius: pHeight * 0.025,
                                                  backgroundColor: Colors.grey,
                                                  child: CircleAvatar(
                                                    radius: pHeight * 0.025,
                                                    backgroundColor:
                                                        Color.fromRGBO(
                                                            212, 56, 57, 1),
                                                    foregroundColor:
                                                        Colors.white,
                                                    child: Icon(
                                                        Icons.directions_walk),
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              pHeight * 0.02)),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        offset: Offset.zero,
                                                        color: Colors.black
                                                            .withOpacity(0.4),
                                                        blurRadius: 10,
                                                        spreadRadius: 1)
                                                  ],
                                                ),
                                                child: CircleAvatar(
                                                  radius: 24,
                                                  backgroundColor: Colors.grey,
                                                  child: CircleAvatar(
                                                    radius: 20,
                                                    backgroundColor:
                                                        Colors.white,
                                                    // foregroundColor: Colors.grey,
                                                    child: Icon(
                                                      Icons.shopping_cart,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              pHeight * 0.02)),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        offset: Offset.zero,
                                                        color: Colors.black
                                                            .withOpacity(0.4),
                                                        blurRadius: 10,
                                                        spreadRadius: 1)
                                                  ],
                                                ),
                                                child: CircleAvatar(
                                                  radius: 24,
                                                  backgroundColor: Colors.grey,
                                                  child: CircleAvatar(
                                                    radius: 20,
                                                    backgroundColor:
                                                        Colors.white,
                                                    // foregroundColor: Colors.grey,
                                                    child: Image.asset(
                                                        'assets/passenger.png',
                                                        height:
                                                            pHeight * 0.025),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(flex: 2),
                                    Container(
                                      width: pWidth * 0.22,
                                      child: Column(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            "Wheel Chair",
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "charges extra",
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w100,
                                                fontSize: 13),
                                          ),
                                          Text(
                                            "\$0.5",
                                            style: GoogleFonts.montserrat(
                                                color: Color.fromRGBO(
                                                    212, 56, 57, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: pHeight * 0.03),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer()
                                    // CircleAvatar(),
                                    // CircleAvatar(),
                                  ],
                                ),
                                SizedBox(
                                  height: pHeight * 0.02,
                                ),
                                Center(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.90,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          right: pWidth * 0.03,
                                          left: pWidth * 0.03),
                                      child: Column(
                                        children: <Widget>[
                                          Divider(
                                            thickness: 1,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(height: pHeight * 0.015),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    "Cancellation Charge",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                  ),
                                                  Text(
                                                    "Cancellation charge for the your previous ",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            color: Colors.grey,
                                                            fontSize: 12),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "booking ",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize: 12),
                                                      ),
                                                      Text(
                                                        "UKL2356P ",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 12),
                                                      ),
                                                      Text(
                                                        "is charged extra",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize: 12),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Text(
                                                "\$2",
                                                style: GoogleFonts.montserrat(
                                                    color: Color.fromRGBO(
                                                        212, 56, 57, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: pHeight * 0.03),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: pHeight * 0.02,
                                )
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
                            width: MediaQuery.of(context).size.width,

                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: pWidth * 0.05,
                                  vertical: pHeight * 0.01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Payment',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        fontSize: pHeight * 0.02),
                                  ),
                                  SizedBox(
                                    height: pHeight * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: pWidth * 0.3,
                                        height: pHeight * 0.04,
                                        child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1)),
                                            child: DropdownButton(
                                              underline: Container(),
                                              onChanged: (value) {},
                                              items: [
                                                DropdownMenuItem(
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 8.0),
                                                    child: Text('Cash'),
                                                  ),
                                                )
                                              ],
                                            )),
                                      ),
                                      Container(
                                        width: pWidth * 0.3,
                                        height: pHeight * 0.04,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            border: Border.all(
                                                color: Colors.grey, width: 1)),
                                        child: TextField(
                                          cursorColor: Colors.black,
                                          style: GoogleFonts.montserrat(
                                              height: pHeight * 0.0005),
                                          decoration: new InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              contentPadding: EdgeInsets.only(
                                                  left: pWidth * 0.01,
                                                  bottom: pHeight * 0.01,
                                                  right: pWidth * 0.01),
                                              hintText: 'Apply Coupon'),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: pHeight * 0.01,
                                  ),
                                  Text(
                                    "Above fare isn\'t inclusive of Tax. (Parking/Toll/Waiting Charges extra*",
                                    style: GoogleFonts.montserrat(
                                        fontSize: pHeight * 0.012),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        scheduleToggle == 1
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    shadowColor: Colors.black,
                                    elevation: 10,
                                    child: Container(
                                      width: pWidth * 0.45,
                                      child: Padding(
                                        padding: EdgeInsets.all(pHeight * 0.01),
                                        child: Row(
                                          children: [
                                            Icon(Icons.calendar_today),
                                            Text(' Thu, Apr 13 (2020)',
                                                style:
                                                    GoogleFonts.montserrat()),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    shadowColor: Colors.black,
                                    elevation: 10,
                                    child: Container(
                                      width: pWidth * 0.45,
                                      child: Padding(
                                        padding: EdgeInsets.all(pHeight * 0.01),
                                        child: Row(
                                          children: [
                                            Icon(Icons.timer),
                                            Text(' 3:30 P.M.',
                                                style:
                                                    GoogleFonts.montserrat()),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset.zero,
                          color: Colors.grey,
                          blurRadius: 20,
                          spreadRadius: 2)
                    ],
                  ),
                  width: pWidth * 0.9,
                  height: pHeight * 0.07,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        child: InkWell(
                          onTap: () {
                            if (scheduleToggle == 0)
                              setState(() {
                                scheduleToggle = 1;
                                print(scheduleToggle);
                              });
                            else
                              setState(() {
                                scheduleToggle = 0;
                                print(scheduleToggle);
                              });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: pHeight * 0.06,
                            width: pWidth * 0.5,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(pHeight * 0.05))),
                            child: Text('Schedule Ride',
                                style: GoogleFonts.montserrat()),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CabBookedScreen(),
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: pHeight * 0.06,
                            width: pWidth * 0.5,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(pHeight * 0.05))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Confirm Ride',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.03,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
