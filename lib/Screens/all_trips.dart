import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latlng/latlng.dart';
import 'package:map/map.dart';

class AllTrips extends StatefulWidget {
  @override
  _AllTripsState createState() => _AllTripsState();
}

class _AllTripsState extends State<AllTrips> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          actions: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  'Trips Summary',
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: pHeight * 0.025,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            )
          ],
          bottom: TabBar(
            labelStyle:
                TextStyle(fontFamily: 'Roboto', fontSize: pHeight * 0.02),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                text: 'Upcoming',
              ),
              Tab(
                text: 'Scheduled',
              ),
              Tab(
                text: 'Past',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            UpcomingTrips(),
            ScheduledTrips(),
            Icon(Icons.cancel)
          ],
        ),
      ),
    );
  }
}

class UpcomingTrips extends StatefulWidget {
  @override
  _UpcomingTripsState createState() => _UpcomingTripsState();
}

class _UpcomingTripsState extends State<UpcomingTrips> {
  final controller = MapController(
    location: LatLng(35.68, 51.41),
  );
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: pHeight * 0.35,
                          width: pWidth * 0.6,
                          child: Map(
                            controller: controller,
                          ),
                        ),
                        SizedBox(
                          width: pWidth * 0.05,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Driver on the way',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: pHeight * 0.018),
                            ),
                            Image.asset(
                              'assets/man.png',
                              scale: 3.5,
                            ),
                            Text(
                              'NU 20 TMV',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: pHeight * 0.022),
                            ),
                            Text(
                              'Mini Cab - Black',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: pHeight * 0.018),
                            ),
                            SizedBox(
                              height: pHeight * 0.05,
                            ),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red[900],
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          '5678',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: pHeight * 0.022),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: pHeight * 0.005,
                                    ),
                                    Text(
                                      'OTP',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: pHeight * 0.015),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: pWidth * 0.02,
                                ),
                                Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.phone,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      height: pHeight * 0.005,
                                    ),
                                    Text(
                                      'Call driver',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: pHeight * 0.015),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}

class ScheduledTrips extends StatefulWidget {
  @override
  _ScheduledTripsState createState() => _ScheduledTripsState();
}

class _ScheduledTripsState extends State<ScheduledTrips> {
  final controller = MapController(
    location: LatLng(35.68, 51.41),
  );
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: pHeight * 0.3,
                          width: pWidth * 0.5,
                          child: Map(
                            controller: controller,
                          ),
                        ),
                        SizedBox(
                          width: pWidth * 0.05,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Trip scheduled at',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.35),
                                  fontSize: pHeight * 0.014),
                            ),
                            Text(
                              '25-05-2019    12:45 pm',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: pHeight * 0.018),
                            ),
                            SizedBox(
                              height: pHeight * 0.05,
                            ),
                            Text(
                              '( Your Trip will confirmed 15 mins\nbefore the scheduled time\nand will be notified. )',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.35),
                                  fontSize: pHeight * 0.014),
                            ),
                            SizedBox(
                              height: pHeight * 0.05,
                            ),
                            Container(
                              height: pHeight * 0.05,
                              width: pWidth * 0.275,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.2),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'More Details',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
