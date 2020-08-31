import 'package:flutter/material.dart';

class EmergencyNumberScreen extends StatefulWidget {
  @override
  _EmergencyNumberScreenState createState() => _EmergencyNumberScreenState();
}

class _EmergencyNumberScreenState extends State<EmergencyNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Emergency Number',
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
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.42,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/emergency_screen_asset.png'),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    'Add two emergency contact numbers',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 30.0, top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.green,
                      size: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text('9876543210',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ))
                  ],
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          '+91',
                          style: TextStyle(),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '  Enter Mobile Number  ',
                              style: TextStyle(),
                            ),
                            Icon(Icons.book)
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
                child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.red,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 55.0, right: 55.0, top: 10.0, bottom: 10.0),
                  child: Text('Save',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      )),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
