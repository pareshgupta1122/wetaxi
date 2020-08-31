import 'package:flutter/material.dart';
import 'package:wetaxi/Screens/payment_successful_screen.dart';

class TripCompletedScreen extends StatefulWidget {
  @override
  _TripCompletedScreenState createState() => _TripCompletedScreenState();
}

class _TripCompletedScreenState extends State<TripCompletedScreen> {
  String _value;
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
        title: Text('Trip Completed'),
      ),
      body: Column(
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
          Container(
            height: MediaQuery.of(context).size.height * 0.18,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ride Fare',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      // Icon(Icons.directions_bike),
                      Image.asset('assets/mini.png'),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Comfort',
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\$ 21.4',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        '( inclusive of Tax )',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 35.0,
                      right: 35.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Fare Details',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 35.0, right: 35.0, top: 5.0, bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Travel Fare',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Text('\$ 13'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 35.0, right: 35.0, top: 5.0, bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Time Fare',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Text('\$ 13'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 35.0, right: 35.0, top: 5.0, bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Add on charge',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Text('\$ 13'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 35.0, right: 35.0, top: 5.0, bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cancellation Charge added',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Text('\$ 13'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 35.0, right: 35.0, top: 5.0, bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tax 5%',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Text('\$ 13'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Payment',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  DropdownButton<String>(
                    items: [
                      DropdownMenuItem<String>(
                        child: Text('Cash'),
                        value: 'one',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('UPI'),
                        value: 'two',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('Netbanking'),
                        value: 'three',
                      ),
                    ],
                    onChanged: (String value) {
                      setState(() {
                        _value = value;
                      });

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentSuccessfulScreen(),
                        ),
                      );
                    },
                    hint: Text('Payment Option'),
                    value: _value,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
