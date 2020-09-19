import 'package:flutter/material.dart';

class CouponsScreen extends StatefulWidget {
  @override
  _CouponsScreenState createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/bg_drawer.png',
              height: pHeight * 0.1,
              width: pWidth,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: pHeight * 0.045,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
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
                      child: Center(
                        child: Text(
                          'Coupons',
                          style: TextStyle(
                              color: Colors.white, fontSize: pHeight * 0.025),
                        ),
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
                Expanded(
                  child: ListView.builder(
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return Coupon();
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Coupon extends StatelessWidget {
  const Coupon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Container(
      height: pHeight * 0.2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/coupon.png',
                scale: 1.75,
              ),
            ),
            Positioned(
              top: 0,
              left: 125,
              child: Image.asset(
                'assets/coupon2.png',
                scale: 1.75,
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: pWidth * 0.075,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: pHeight * 0.02,
                    ),
                    Text(
                      'Code',
                      style: TextStyle(
                          fontSize: pHeight * 0.025, color: Colors.white),
                    ),
                    SizedBox(
                      height: pHeight * 0.02,
                    ),
                    Text(
                      'SD4578',
                      style: TextStyle(
                          fontSize: pHeight * 0.025, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  width: pWidth * 0.1,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: pHeight * 0.02,
                    ),
                    Text(
                      'Welcome Offer',
                      style: TextStyle(
                          fontSize: pHeight * 0.025, color: Colors.black),
                    ),
                    SizedBox(
                      height: pHeight * 0.01,
                    ),
                    Container(
                      width: pWidth * 0.62,
                      child: Text(
                        'Avail 20% OFF on first 3 rides maximum of \$100',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: pHeight * 0.02, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: pHeight * 0.01,
                    ),
                    Row(
                      children: <Widget>[
                        Text('Valid from\n26 Sep 2020'),
                        SizedBox(
                          width: pWidth * 0.26,
                        ),
                        Text('Valid till\n26 Oct 2020'),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
