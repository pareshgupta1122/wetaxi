import 'package:flutter/material.dart';

class EmergencyNumberScreen extends StatefulWidget {
  @override
  _EmergencyNumberScreenState createState() => _EmergencyNumberScreenState();
}

class _EmergencyNumberScreenState extends State<EmergencyNumberScreen> {
  TextEditingController phone = new TextEditingController(text: '+91');

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
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
                          'Emergency number',
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
                SizedBox(
                  height: pHeight * 0.08,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/emergency.png',
                    scale: 2.5,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'Add two emergency contact numbers',
                      style: TextStyle(fontSize: pHeight * 0.025),
                    ),
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.green,
                      size: pHeight * 0.035,
                    ),
                    SizedBox(
                      width: pWidth * 0.1,
                    ),
                    Text(
                      '+91 9876543210',
                      style: TextStyle(fontSize: pHeight * 0.03),
                    ),
                  ],
                ),
                SizedBox(
                  height: pHeight * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: pWidth * 0.9,
                      child: TextFormField(
                        controller: phone,
                        decoration: InputDecoration(
                          hintText: 'Mobile Number',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.contacts,
                              color: Colors.black,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.black.withOpacity(0.15),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: pHeight * 0.15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color.fromRGBO(179, 57, 51, 1),
                  ),
                  //UIColor(red: 179/255, green: 57/255, blue: 51/255)
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      bottom: 15.0,
                      left: 60.0,
                      right: 60.0,
                    ),
                    child: Text(
                      'Save',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: pHeight * 0.02),
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
}
