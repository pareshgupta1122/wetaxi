import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetaxi/Screens/payment_successful_screen.dart';

class TripCompletedScreen extends StatefulWidget {
  @override
  _TripCompletedScreenState createState() => _TripCompletedScreenState();
}

class _TripCompletedScreenState extends State<TripCompletedScreen> {
  String _value = 'Cash';
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
                          fontWeight: FontWeight.w600,
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
                          fontWeight: FontWeight.w600,
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
                          fontWeight: FontWeight.w600,
                          fontSize: pHeight * 0.02),
                    ),
                    Spacer(flex: 3),
                  ],
                ),
              ),
              SizedBox(
                height: pHeight * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: pWidth * 0.02),
                child: Card(
                  elevation: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: pHeight * 0.01,
                          ),
                          Text(
                            'Ride Fare',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: pHeight * 0.02),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          // Icon(Icons.directions_bike),
                          Image.asset(
                            'assets/mini.png',
                            height: pHeight * 0.05,
                          ),

                          Text(
                            'Comfort',
                            style: GoogleFonts.montserrat(),
                          ),
                          SizedBox(
                            height: pHeight * 0.01,
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 7,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '\$',
                                style: GoogleFonts.montserrat(
                                  fontSize: pHeight * 0.03,
                                ),
                              ),
                              Text(
                                ' 21.4',
                                style: GoogleFonts.montserrat(
                                  fontSize: pHeight * 0.05,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Text(
                            '( inclusive of Tax )',
                            style: GoogleFonts.montserrat(),
                          ),
                        ],
                      ),
                      Spacer()
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: pWidth * 0.02),
                child: Card(
                  elevation: 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: pWidth * 0.08, top: pHeight * 0.01),
                            child: Text(
                              'Fare Details',
                              style: GoogleFonts.montserrat(
                                  fontSize: pHeight * 0.02,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: pWidth * 0.08,
                            right: pWidth * 0.08,
                            top: 8.0,
                            bottom: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Travel Fare',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400),
                            ),
                            Text('\$ 13'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: pWidth * 0.08,
                            right: pWidth * 0.08,
                            top: 5.0,
                            bottom: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Time Fare',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400),
                            ),
                            Text('\$ 13'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: pWidth * 0.08,
                            right: pWidth * 0.08,
                            top: 5.0,
                            bottom: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Add on charge',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400),
                            ),
                            Text('\$ 13'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: pWidth * 0.08,
                            right: pWidth * 0.08,
                            top: 5.0,
                            bottom: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cancellation Charge added',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400),
                            ),
                            Text('\$ 13'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: pWidth * 0.08,
                            right: pWidth * 0.08,
                            top: 5.0,
                            bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tax 5%',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400),
                            ),
                            Text('\$ 13'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: pWidth * 0.02),
                child: Card(
                  elevation: 7,
                  child: Padding(
                    padding: EdgeInsets.all(pHeight * 0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Payment',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: pHeight * 0.02),
                        ),
                        Container(
                          width: pWidth * 0.3,
                          height: pHeight * 0.04,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border:
                                    Border.all(color: Colors.grey, width: 1)),
                            child: DropdownButton(
                                underline: Container(),
                                onChanged: (value) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PaymentSuccessfulScreen()));
                                },
                                items: [
                                  DropdownMenuItem(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text('Cash'),
                                    ),
                                  ),
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
