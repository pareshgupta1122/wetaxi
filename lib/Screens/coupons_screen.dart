import 'package:flutter/material.dart';

class CouponsScreen extends StatefulWidget {
  @override
  _CouponsScreenState createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Coupons',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: new BoxDecoration(
            color: Color.fromRGBO(212, 56, 57, 1),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/coupon.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/coupon.png'),
            )
          ],
        ),
      ),
    );
  }
}
