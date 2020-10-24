
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaidSuccessfulPage extends StatefulWidget {

  @override
  _PaidSuccessfulPageState createState() => _PaidSuccessfulPageState();
}

class _PaidSuccessfulPageState extends State<PaidSuccessfulPage> {

  @override
  Widget build(BuildContext context) {
    double pHeight = MediaQuery.of(context).size.height;
    double pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: pHeight,
        width: pWidth,
        child: SafeArea(

          child: Column(
mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset('assets/mini.png'),
              SizedBox(height:pHeight*0.03 ),
              Text(
                "\$ 21.4",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: pHeight * 0.03),
              ),
              Text('(inclusive of Tax)'
              ),
              SizedBox(height:pHeight*0.03 ),
              Stack(
                children: [
                  Image.asset('assets/green_circle.png'),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 17,0,0),
                    child: Image.asset('assets/tick.png'),
                  ),
                ],
              ),

              SizedBox(height:pHeight*0.03 ),
              Text('Paid Successful'),
              SizedBox(height:pHeight*0.02 ),
              Text('Thankyou For Choosing us !'),
              SizedBox(height:pHeight*0.1 ),
              InkWell(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,

                  ),
                  //UIColor(red: 179/255, green: 57/255, blue: 51/255)
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      bottom: 15.0,
                      left: 50.0,
                      right: 50.0,
                    ),
                    child: Text(
                      'Close',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
