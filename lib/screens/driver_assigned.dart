
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetaxi/constants/colour.dart';
import 'package:wetaxi/constants/hexaColour.dart';

class DriverSuccessfulPage extends StatefulWidget {

  @override
  _DriverSuccessfulPageState createState() => _DriverSuccessfulPageState();
}

class _DriverSuccessfulPageState extends State<DriverSuccessfulPage> {

  @override
  Widget build(BuildContext context) {
    double pHeight = MediaQuery.of(context).size.height;
    double pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
backgroundColor: HexColorUtils.getColorFromHex(Colours.image),
      body: Container(

        height: pHeight,
        width: pWidth,
        child: SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Stack(
                children: [
                  Image.asset('assets/green_circle.png'),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 17,0,0),
                    child: Image.asset('assets/tick.png'),
                  ),
                ],
              ),

              SizedBox(height:pHeight*0.02 ),
              Text('Driver Assigned \n  Successfully....!',style: GoogleFonts.montserrat(color: Colors.white,fontSize: pHeight*0.025),),


            ],
          ),

        ),
      ),
    );
  }
}
