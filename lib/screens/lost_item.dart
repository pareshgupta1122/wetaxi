import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class LostItemPage extends StatefulWidget {

  @override
  _LostItemPageState createState() => _LostItemPageState();
}
enum SingingCharacter { Bag, Wallet,Mobile,Others }
SingingCharacter _character = SingingCharacter.Bag;

class _LostItemPageState extends State<LostItemPage> {

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
                    Column(
                      children: [
                        Container(
                          child: Center(
                            child: Text(
                              'Enter Lost Item',
                              style:GoogleFonts.montserrat(color: Colors.white, fontSize: pHeight * 0.025,fontWeight: FontWeight.bold),
                            ),

                          ),
                        ),
                        Text(
                          'You Have Option to type Item',
                          style:GoogleFonts.montserrat(color: Colors.white, fontSize: pHeight * 0.018),
                        ),
                      ],
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
                List(),
              ],
            ),
          ),

         ],
      ),




    );
  }
   Widget List(){
     final pHeight = MediaQuery.of(context).size.height;
     final pWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [

        Padding(
          padding:  EdgeInsets.fromLTRB(pWidth*0.1,pHeight*0.01,pWidth*0.1,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [




              Container(
                child: Text('Select Options here ',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: pHeight*0.023),),
              ),
              SizedBox(height: pHeight*0.02),
              ListTile(
                title: const Text('Bag'),
                leading:Radio(
                  activeColor: Colors.black,
                  hoverColor: Colors.black,
                  value: SingingCharacter.Bag,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Wallet'),
                leading: Radio(
                  activeColor: Colors.black,
                  hoverColor: Colors.black,
                  value: SingingCharacter.Wallet,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Mobile'),
                leading: Radio(
                  activeColor: Colors.black,
                  hoverColor: Colors.black,
                  value: SingingCharacter.Mobile,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),

              ListTile(
                title: const Text('Others'),
                leading: Radio(
                  activeColor: Colors.black,
                  hoverColor: Colors.black,
                  value: SingingCharacter.Others,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: pHeight*0.04,
              ),
              Container(
                child:TextFormField(
                  maxLines: 3,
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

              SizedBox(height:pHeight*0.1 ),
              Padding(
                padding:  EdgeInsets.only(left:pWidth*0.11),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(12.0),
                      color: Color.fromRGBO(211, 56, 57, 1),

                    ),
                    //UIColor(red: 179/255, green: 57/255, blue: 51/255)
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                        bottom: 15.0,
                        left: 45.0,
                        right: 45.0,
                      ),
                      child: Text(
                        'Submit Enquiry',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ),


      ],
    );
   }
}
