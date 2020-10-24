import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingPage extends StatefulWidget {

  @override
  _RatingPageState createState() => _RatingPageState();
}
enum SingingCharacter { Near_car, Responsible_driver }
SingingCharacter _character = SingingCharacter.Near_car;

class _RatingPageState extends State<RatingPage> {

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(

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
        Column(
          children: [
            SizedBox(
              height: pHeight*0.1,
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(pWidth*0.1,pHeight*0.01,pWidth*0.1,0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text('Thanks For Rating',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: pHeight*0.024),),
                  ),
                  SizedBox(height: pHeight*0.02),
                  Container(
                    child: Text('Give Rating and write reviews for the trip or\nselect among the options'),
                  ),
                  SizedBox(
                    height: pHeight*0.06,
                  ),

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
                  SizedBox(
                    height: pHeight*0.04,
                  ),
        Container(
        child:TextFormField(
maxLines: 5,
          cursorColor: Colors.black,
          keyboardType: TextInputType.text,

          decoration: InputDecoration(
              hintText: "Enter Your Reviews",
              fillColor: Colors.white,
              contentPadding: EdgeInsets.only(
                  left: pWidth * 0.04,
                  bottom: pHeight * 0.02,
                  top: pHeight * 0.02,
                  right: pWidth * 0.02),

              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0),
                ),
              )),
        ),
        ),
                  SizedBox(height: pHeight*0.04),
                  Container(
                    child: Text('Select Options here ',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: pHeight*0.023),),
                  ),
                  SizedBox(height: pHeight*0.02),
                  ListTile(
                    title: const Text('Near Driver'),
                    leading:Radio(
                      activeColor: Colors.black,
                      hoverColor: Colors.black,
                      value: SingingCharacter.Near_car,
                      groupValue: _character,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Responsible Driver'),
                    leading: Radio(
                      activeColor: Colors.black,
                      hoverColor: Colors.black,
                      value: SingingCharacter.Responsible_driver,
                      groupValue: _character,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),


                ],
              ),
            ),
            SizedBox(height: pHeight*0.13),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  child: RaisedButton(
                    onPressed: (){},

                    child: Padding(
                      padding: EdgeInsets.fromLTRB(pWidth*0.14, pHeight*0.03, pWidth*0.14, pHeight*0.03),
                    child:  Text('Later',style:GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                    ),

                  ),
                ),
                Container(

                  child: RaisedButton(
                    color: Color.fromRGBO(179, 57, 51, 1),
                    onPressed: (){},
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(pWidth*0.14, pHeight*0.03, pWidth*0.14, pHeight*0.03),
                      child:  Text('Submit',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,color: Colors.white),
                    ),

                  ),
                ),
                ),],
            ),
          ],
        ),




    );}
}
