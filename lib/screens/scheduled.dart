import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetaxi/constants/colour.dart';
import 'package:wetaxi/constants/hexaColour.dart';
import 'package:wetaxi/data/network/api_response.dart';
import 'package:wetaxi/screens/past_trip.dart';
import 'package:wetaxi/screens/trip_started.dart';

class ScheduledPage extends StatefulWidget {
  @override
  _ScheduledPageState createState() => _ScheduledPageState();
}

class _ScheduledPageState extends State<ScheduledPage> with TickerProviderStateMixin {
  TabController _tabController;
  final List<MyTabs> _tabs = [new MyTabs(title: "Trip History"),
    new MyTabs(title: "Scheduled Trip Details"),
    new MyTabs(title: "Trip History"),

  ];
  MyTabs _myHandler ;
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this,initialIndex: 1);
    _myHandler = _tabs[0];
    _tabController.addListener(_handleSelected);

    super.initState();
  }
  void _handleSelected() {
    setState(() {
      _myHandler= _tabs[_tabController.index];
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;


    return DefaultTabController(
      length: 3,
      child :Scaffold(
        backgroundColor: Colors.white70,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(pHeight*0.17),
          child:AppBar(

            backgroundColor: Color.fromRGBO(211, 56, 57, 1),
            actions: [


              Padding(
                padding:  EdgeInsets.only(top:pHeight*0.03),
                child: IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
            title: Padding(
              padding:  EdgeInsets.only( top:pHeight*0.03),

              child: Text(_myHandler.title,style:GoogleFonts.montserrat(color: Colors.white, fontSize: pHeight * 0.025,fontWeight: FontWeight.bold),),
            ),
            bottom: TabBar(
              controller: _tabController,
              labelStyle: GoogleFonts.montserrat(color: Colors.white, fontSize: pHeight * 0.018,fontWeight: FontWeight.bold),

              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              indicatorWeight: 2,
              tabs: [

                Tab
                  (text: 'Upcoming'),
                Tab(text: 'Scheduled'),
                Tab(text: 'Past'),
              ],
            ),
          ),
        ),
        body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              UpcomingList(),
              Scheduled(),
              Past(),
            ]


        ),

      ),

    );
  }
  Widget UpcomingList(){
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Container(

      color: Colors.white70,


      child:
      Column(
        children: [
          SizedBox(height: pHeight * 0.01),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/upcoming.png'),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.green,

                          child:
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                pWidth * 0.09, pHeight * 0.01, pWidth * 0.09,
                                pHeight * 0.01),
                            child:
                            Text(
                              'Trip Scheduled at', textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        SizedBox(height: pHeight * 0.01),
                        Container(
                          child: Row(

                            children: [
                              Image.asset('assets/upcomingdriver.png'),


                            ],
                          ),
                        ),

                        Container(
                          child: Column(
                            children: [
                              Text('NU 20 TMV'),
                              Text('Mini cab-black',style: TextStyle(fontSize: pHeight*0.012,color: Colors.grey)),
                              SizedBox(height: pHeight * 0.02),
                            ],
                          ),
                        ),

                        SizedBox(height: pHeight * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: pHeight * 0.01,
                                        horizontal: pHeight * 0.01),
                                    child: Text(
                                      '5678',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500,
                                          fontSize: pHeight * .015,
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
                                          Radius.circular(pHeight * 0.02))),
                                ),

                                Text('OTP',style: TextStyle(fontSize: pHeight*0.012,color: Colors.grey),),
                              ],
                            ),
                            SizedBox(width: pWidth*0.025),
                            Column(
                              children: [
                                Icon(
                                  Icons.call,
                                  color: Colors.green,

                                ),
                                Text('Call Driver',style: TextStyle(fontSize: pHeight*0.012,color: Colors.grey),),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: pHeight * 0.01),
                      ],

                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),




    );}

  Widget Scheduled(){
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Container(

      color: Colors.white70,


          child: Column(
    children: [
    Image.asset('assets/scheduled_pic.png'),
      SizedBox(height:pHeight*0.01 ),
      Container(

        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.95,
      child:
      Column(
        children:[
      Padding(
        padding: EdgeInsets.fromLTRB(0,pHeight*0.02,0,pHeight*0.02),
        child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
Container(
  child:Row(

    children: [
      Icon(
        Icons.calendar_today,
        color: Colors.black,

      ),
       SizedBox(height: pHeight*0.01),
       Text('14-10-20'),

    ],
  ),
),

            Container(
              child:Row(
                children: [
                  Icon(
                    Icons.timelapse,
                    color: Colors.black,

                  ),
                  SizedBox(height: pHeight*0.01),
                  Text('12:45 pm'),

                ],
              ),
            ),
          ],
        ),
      ),
          SizedBox(
            height: pHeight*0.01,
            child: Divider(
              height: pHeight*0.2,
              thickness: 2,
            ),
          ),
          SizedBox(height: pHeight*0.01),
          Row(
            children: [
              SizedBox(width: pWidth*0.04),
              Icon(
                Icons.location_on,
                color: Colors.green,
              ),
              SizedBox(width: pWidth*0.04),
              Text('No.46,Abc street,Saligramm,Chennai'),

            ],
          ),
          SizedBox(height: pHeight*0.01),
          Row(
            children: [
              SizedBox(width: pWidth*0.04),
              Icon(
                Icons.flag,

                color: Colors.red,
              ),
              SizedBox(width: pWidth*0.04),
              Text('No.31,Green road,Nungabakkam,Chennai'),

            ],
          ),
          SizedBox(height: pHeight*0.01),
          SizedBox(
            height: pHeight*0.01,
            child: Divider(
              height: pHeight*0.2,
              thickness: 2,
            ),
          ),
          SizedBox(height: pHeight*0.02),

          Row(
            children: [

              SizedBox(width: pWidth*0.04),
              Image.asset('assets/sedann.png'),
              SizedBox(width: pWidth*0.04),
              Text('Executive- (Local Trip)',style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: pHeight*0.01),
          Row(
            children: [

              SizedBox(width: pWidth*0.04),
              Image.asset('assets/cash-in-hand.png'),
              SizedBox(width: pWidth*0.04),
              Text("\$ 17.8",style: GoogleFonts.montserrat(color: Colors.black, fontSize: pHeight * 0.03,fontWeight: FontWeight.bold),),
            ],
          ),
          Text('(Above fare is inclusive of Tax(parking/toll\n waiting charges extra*)'),
          SizedBox(height: pHeight*0.04),
        ],
      ),
      ),

SizedBox(height: pHeight*0.03),
      Text('(Your trip will confirmed 15 min before scheduled)'),
      SizedBox(height: pHeight*0.02),
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
    );


  }
  Widget Past(){
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;

    return Container(

      color: Colors.white70,


      child:
      Column(
        children: [
          SizedBox(height: pHeight * 0.01),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/past_trip.png'),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PastPage()));
                  },
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.green,

                          child:
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                pWidth * 0.1, pHeight * 0.01, pWidth * 0.1,
                                pHeight * 0.01),
                            child:
                            Text(
                              'Trip Completed', textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        SizedBox(height: pHeight * 0.01),
                        Container(
                          child: Row(

                            children: [
                              Icon(
                                Icons.calendar_today,
                                color: Colors.black,

                              ),
                              SizedBox(height: pHeight * 0.01),
                              Text('14-10-20'),

                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.timelapse,
                                color: Colors.black,

                              ),
                              SizedBox(height: pHeight * 0.01),
                              Text('12:45 pm'),

                            ],
                          ),
                        ),
                        SizedBox(height: pHeight * 0.01),
                        Container(


                          child:
                          RatingBar(
                            itemSize: pHeight * 0.02,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(
                                horizontal: 4.0),
                            itemBuilder: (context, _) =>
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                        SizedBox(height: pHeight * 0.01),
                      ],

                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(

            color: Colors.white70,


            child:
            Column(
              children: [
                SizedBox(height: pHeight * 0.01),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/past_trip.png'),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              color: Colors.red,

                              child:
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    pWidth * 0.11, pHeight * 0.01, pWidth * 0.11,
                                    pHeight * 0.01),
                                child:
                                Text(
                                  'Trip Cancelled', textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            SizedBox(height: pHeight * 0.01),
                            Container(
                              child: Row(

                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.black,

                                  ),
                                  SizedBox(height: pHeight * 0.02),
                                  Text('14-10-20'),

                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.timelapse,
                                    color: Colors.black,

                                  ),
                                  SizedBox(height: pHeight * 0.01),
                                  Text('12:45 pm'),

                                ],
                              ),
                            ),
                            SizedBox(height: pHeight * 0.04),


                          ],

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ),
        ],
      ),

    );
  }
}
