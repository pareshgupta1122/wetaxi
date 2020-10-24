import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:wetaxi/constants/colour.dart';
import 'package:wetaxi/constants/hexaColour.dart';
import 'package:wetaxi/constants/hexaColour.dart';


class ChatPage extends StatefulWidget {

  @override
  _ChatPageState createState() => _ChatPageState();
}



class _ChatPageState extends State<ChatPage> {

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
//      appBar: AppBar(
//        title: Text(
//          'Refer and Earn',
//          style: GoogleFonts.montserrat()(color: Colors.white),
//        ),
//        centerTitle: true,
//        leading: GestureDetector(
//          onTap: () => Navigator.pop(context),
//          child: Icon(Icons.arrow_back_ios),
//        ),
//        actions: [
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Icon(
//              Icons.notifications_none,
//              color: Colors.white,
//            ),
//          ),
//        ],
//        flexibleSpace: Container(
//          decoration: new BoxDecoration(
//            color: Color.fromRGBO(212, 56, 57, 1),
//          ),
//        ),
//      ),

      body:
      Stack(
        children: [
          Container(

            height: pHeight*0.17,
            color: Color.fromRGBO(211, 56, 57, 1),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: pHeight * 0.07,
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
                          'Chat with Driver to \n to know where he is',
                          style:GoogleFonts.montserrat(color: Colors.white, fontSize: pHeight * 0.025,fontWeight: FontWeight.bold),
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
                SizedBox(height: pHeight*0.055),
      Chat1(),
         Chat2(),
                Chat3(),
              ],
            ),
          ),

        ],
      ),




    );
  }
Widget Chat1(){
  final pHeight = MediaQuery.of(context).size.height;
  final pWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Text('Today 2:30 Pm',style: TextStyle(color: Colors.grey),),
          SizedBox(height: pHeight*0.02),
  Container(
  margin: EdgeInsets.fromLTRB(0,0,  60, 0),
  child: Stack(
  children: <Widget>[

  Container(
  height: pHeight * 0.09,
  width: pWidth,
  margin: EdgeInsets.fromLTRB(30,10,0,0),
  decoration: BoxDecoration(
  shape: BoxShape.rectangle,
     color: HexColorUtils.getColorFromHex(
      Colours.chatbox1),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: <BoxShadow>[
  BoxShadow(
  color: Colors.black12,
  blurRadius: 10.0,
  ),
  ],
  ),

      ),

    Container(
      //height: pHeight * .1,
      padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
      alignment: FractionalOffset.topLeft,
      child: Image(
        image: AssetImage('assets/female.png'),
      ),
    ),
Padding(
  padding:  EdgeInsets.fromLTRB(pWidth*0.15,pHeight*0.032,0,0),
  child:   Text(

    'Hi,Just reach at the parking lot in my \n location',style: TextStyle(color: Colors.white),

  ),
),
    ],),),],),);



}
Widget Chat2(){
  final pHeight = MediaQuery.of(context).size.height;
  final pWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0,40,  0, 0),
      child: Stack(
        children: <Widget>[

          Container(
            height: pHeight * 0.07,
            width: pWidth,
            margin: EdgeInsets.fromLTRB(pWidth*0.18,pHeight*0.015,pWidth*0.08,0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: HexColorUtils.getColorFromHex(
                  Colours.chatbox2),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                ),
              ],
            ),

          ),

          Container(
            //height: pHeight * .1,
            padding: EdgeInsets.fromLTRB(0, 0, 20, 30),
            alignment: FractionalOffset.topRight,
            child: Image(
              image: AssetImage('assets/male.png'),
            ),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(pWidth*0.21,pHeight*0.033,0,0),
            child:   Text(

              'Sure Mam',style: TextStyle(color: Colors.white),

            ),
          ),
        ],),);
}
Widget Chat3(){
  final pHeight = MediaQuery.of(context).size.height;
  final pWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0,40, 60 , 0),
      child: Stack(
        children: <Widget>[

          Container(
            height: pHeight * 0.09,
            width: pWidth,
            margin: EdgeInsets.fromLTRB(30,10,0,0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: HexColorUtils.getColorFromHex(
                  Colours.chatbox1),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                ),
              ],
            ),

          ),

          Container(
            //height: pHeight * .1,
            padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
            alignment: FractionalOffset.topLeft,
            child: Image(
              image: AssetImage('assets/female.png'),
            ),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(pWidth*0.15,pHeight*0.032,0,0),
            child:   Text(

              'Wait 5 min please',style: TextStyle(color: Colors.white),

            ),
          ),
        ],),);
}
}
