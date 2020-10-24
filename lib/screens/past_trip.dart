import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetaxi/constants/colour.dart';
import 'package:wetaxi/constants/hexaColour.dart';
import 'package:wetaxi/data/network/api_response.dart';
import 'package:wetaxi/screens/lost_item.dart';

import 'package:wetaxi/screens/scheduled.dart';
import 'package:wetaxi/screens/trip_started.dart';

class PastPage extends StatefulWidget {
  @override
  _PastPageState createState() => _PastPageState();
}

class _PastPageState extends State<PastPage> with TickerProviderStateMixin {


  final List<MyTabs> _tabs = [new MyTabs(title: "Trip History"),
    new MyTabs(title: "Trip History"),
    new MyTabs(title: "Past Trip Details"),
  ];
  MyTabs _myHandler ;
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this,initialIndex: 2);

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
                padding:  EdgeInsets.only(top: pHeight*0.03),
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
              padding: EdgeInsets.only(top: pHeight*0.03),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScheduledPage()));
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
                        SizedBox(height: pHeight * 0.02),
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
                        SizedBox(height: pHeight * 0.01),
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
                        SizedBox(height: pHeight * 0.025),
                        Text(
                          'Your trip will confirmed 15 min \n before the scheduled time\n and will be noted',style: TextStyle(fontSize: pHeight*0.013),
                        ),
                        SizedBox(height: pHeight * 0.025),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          //UIColor(red: 179/255, green: 57/255, blue: 51/255)
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 5.0,
                              bottom: 5.0,
                              left: 30.0,
                              right: 30.0,
                            ),
                            child: Text(
                              'More Details',
                              style:TextStyle(fontSize: pHeight*0.015),
                            ),
                          ),
                        ),
                        SizedBox(height: pHeight * 0.025),
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

    return SingleChildScrollView(
      child: Container(

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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: pHeight*0.01),
            Padding(
              padding:  EdgeInsets.only(left: pWidth*0.02),
              child: Container(
                child: Text('Driver Details',style: TextStyle(fontWeight: FontWeight.bold)),

              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Padding(
                 padding:  EdgeInsets.only(top:pHeight*0.02),
                 child: Container(
                   child: Column(
                     children: [
                       Image.asset('assets/mini.png'),

                       Padding(
                         padding:  EdgeInsets.only(top: pHeight*0.015),
                         child: Text('Comfort',style: TextStyle(color: Colors.grey,fontSize: pHeight*0.015)),
                       ),
                     ],
                   ),
                 ),
               ),

                Padding(
                  padding:  EdgeInsets.only(top:pHeight*0.02),
                  child: Container(
                    child: Column(
                      children: [
                        Text('NU 20 TMV'),
                        Text('Mini cab-Black',style: TextStyle(fontSize: pHeight*0.015)),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Image.asset('assets/upcomingdriver.png'),
                      Text('George',style: TextStyle(fontSize: pHeight*0.015)),
                    ],
                  ),
                ),
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
            SizedBox(height: pHeight*0.01),
            Padding(
              padding:  EdgeInsets.fromLTRB(pWidth*0.14,pHeight*0.01,0,pHeight*0.01),
              child: Container(

                child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text('Your Rating To The Driver',style: TextStyle(fontWeight: FontWeight.bold)),
                    RatingBar(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
        ),

        SizedBox(height: pHeight*0.01),

        Stack(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: pWidth*0.025),
              child: Image.asset('assets/Union.png'),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(pWidth*0.05,pHeight*0.03,pWidth*0.02,pHeight*0.025),
                  child: Container(
                    child: Text('Fare Cut Off',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(pWidth*0.05,0,pWidth*0.02,0),
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset('assets/cash-in-hand.png'),
                        SizedBox(width:pWidth*0.03),
                        Text('Ride Fare'),
                        SizedBox(width:pWidth*0.5),
                        Text('\$ 13'),


                      ],
                    ),
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.fromLTRB(pWidth*0.05,pHeight*0.025,pWidth*0.02,pHeight*0.025),

                  child: Row(
                    children: [
                      SizedBox(width:pWidth*0.76),
                      Text('\$ 5'),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(pWidth*0.05,0,pWidth*0.02,0),
                  child: Container(
                    child: Row(
                      children: [

                        SizedBox(width:pWidth*0.085),
                        Text('Adds On'),
                        SizedBox(width:pWidth*0.52),
                        Text('\$ 2'),


                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(pWidth*0.05,pHeight*0.025,pWidth*0.02,pHeight*0.005),
                  child: Container(
                    child: Row(
                      children: [

                        SizedBox(width:pWidth*0.085),
                        Text('Tax'),
                        SizedBox(width:pWidth*0.61),
                        Text('\$ 1'),


                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: pHeight*0.01,

                  child: Divider(
                    height: pHeight*0.01,

                    thickness: 2,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(pWidth*0.05,0,pWidth*0.02,0),
                  child: Container(
                    child: Row(
                      children: [

                        SizedBox(width:pWidth*0.085),
                        Text('Total Fare',style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width:pWidth*0.49),
                        Text('\$ 21',style: TextStyle(fontWeight: FontWeight.bold)),


                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(pWidth*0.05,0,pWidth*0.02,pHeight*0.005),
                  child: Container(
                    child: Row(
                      children: [

                        SizedBox(width:pWidth*0.085),
                        Text('Inclusive of taxes',style: TextStyle(fontSize: pHeight*0.01)),



                      ],
                    ),
                  ),
                ),
              ],
            ),

          ],

        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LostItemPage()));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding:  EdgeInsets.fromLTRB(pWidth*0.016,pHeight*0.03,pWidth*0.016,pHeight*0.03),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 40),
                    child: Icon(
                      Icons.card_giftcard,
                      color: HexColorUtils.getColorFromHex(Colours.background),
                    ),
                  ),
                  Text(
                    'Lost An Item',
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
          ),
        ),
        SizedBox(height: pHeight*0.05),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              child: RaisedButton(
                color: Color.fromRGBO(179, 57, 51, 1),
                onPressed: (){},

                child: Padding(
                  padding: EdgeInsets.fromLTRB(pWidth*0.022, pHeight*0.03, pWidth*0.022, pHeight*0.03),
                  child:  Text('Get Invoice With mail',style:GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: pHeight*0.015,color: Colors.white),),
                ),

              ),
            ),
            Container(

              child: RaisedButton(
color: Colors.white,
                onPressed: (){},
                child: Padding(
                  padding: EdgeInsets.fromLTRB(pWidth*0.130, pHeight*0.03, pWidth*0.130, pHeight*0.03),
                  child:  Text('Support',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,color: Colors.black,fontSize: pHeight*0.015),
                  ),

                ),
              ),
            ),],
        ),
      ],
      ),



      ),
    );
  }
}

class MyTabs {
  final String title;

  MyTabs({this.title});
}
