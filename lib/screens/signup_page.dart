import 'package:flutter/material.dart';
import 'package:wetaxi/constants/endpoints.dart';
import 'package:wetaxi/data/network/api_helper.dart';
import 'package:wetaxi/services/size_config.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileNumberController = TextEditingController();


  var contentPadding = EdgeInsets.only(left: SizeConfig.blockSizeWidth * 2);

  final _formKey = GlobalKey<FormState>();
bool checkBoxValue= false;
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;

    @override
    void dispose() {
      firstNameController.dispose();
      lastNameController.dispose();
      emailController.dispose();
      mobileNumberController.dispose();
      super.dispose();
    }

    Widget nameTextField() {
      return Column(
        children: [
          TextFormField(

            cursorColor: Colors.black,
            controller: firstNameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(

                labelText: "First Name",
                labelStyle: TextStyle(color: Colors.black),
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(
                    left: pWidth * 0.3,
                    bottom: pHeight * 0.02,
                    top: pHeight * 0.02,
                    right: pWidth * 0.02),
                border: OutlineInputBorder(

                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),

                  ),
                )),
          ),
      SizedBox(height:pHeight*0.02 ),
          TextFormField(
            cursorColor: Colors.black,
            controller: lastNameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: "Last Name",
                labelStyle: TextStyle(color: Colors.black),
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(
                    left: pWidth * 0.3,
                    bottom: pHeight * 0.02,
                    top: pHeight * 0.02,
                    right: pWidth * 0.02),
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                )),
          ),
        ],
      );
    }
    SizedBox(height:pHeight*0.02 );
    Widget emailTextField() {
      return TextFormField(
        cursorColor: Colors.black,
        keyboardType: TextInputType.emailAddress,
        controller: emailController,
        decoration: InputDecoration(
            labelText: "Enter Email",
            labelStyle: TextStyle(color: Colors.black),
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(
                left: pWidth * 0.3,
                bottom: pHeight * 0.02,
                top: pHeight * 0.02,
                right: pWidth * 0.02),
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            )),
      );
    }


    Widget mobileNumberTextField() {
      return TextFormField(

        cursorColor: Colors.black,
        keyboardType: TextInputType.phone,
        controller: mobileNumberController,
        decoration: InputDecoration(
            hintText: "Enter Mobile Number",
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(
                left: pWidth * 0.04,
                bottom: pHeight * 0.02,
                top: pHeight * 0.02,
                right: pWidth * 0.02),
            hintStyle: TextStyle(color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            )),
      );
    }
    Widget termsAndConditions(){

      return Row(
        children: [
          Checkbox(
            value: checkBoxValue,
            onChanged: (bool value){
              setState(() {
                checkBoxValue=value;
              });
            },
          ),
          Text('I agree to the',style: TextStyle(fontSize: pHeight * 0.016),),
          SizedBox(width: SizeConfig.blockSizeWidth*1),
          InkWell(
            child: Text('Terms And Conditions',style: TextStyle(color: Colors.blue,fontSize: pHeight * 0.016),),
          ),
        ],
      );
    }

    void _verifyData() {
      ApiHelper apiHelper = ApiHelper();
      String lastName = lastNameController.text;
      String firstName = firstNameController.text;
      String email = emailController.text;
      String stdCode = "91";
      String mobileNumber = mobileNumberController.text;
      print('$firstName $lastName $email $stdCode $mobileNumber');

      Map register = {
        "first_name": firstName,
        "last_name": lastName,
        "std_code": stdCode,
        "mobile": mobileNumber
      };

      var header = {
        "x-device-id": "ABC",
        "x-device-token": "XDC123698745236",
        "x-device-application-version": "1.0.0",
        "x-device-name": "OnePlus3T",
        "x-device-os": "Android",
      };

      apiHelper.postWithHeadersInputs(
          Endpoints.registerCustomer, register, header);
    }

    Widget verifyButton() {
      return GestureDetector(
        onTap: _verifyData,
        child: Container(
          alignment: Alignment.center,
          width: SizeConfig.blockSizeWidth * 90,
          height: SizeConfig.blockSizeHeight * 6.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.redAccent),
          child: Text(
            'VERIFY',
            style: TextStyle(
                color: Colors.white, fontSize: SizeConfig.blockSizeHeight * 2),
          ),
        ),
      );
    }

    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: SizeConfig.blockSizeHeight * 100,
        width: SizeConfig.blockSizeWidth * 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/bg1.png",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeWidth * 7.5),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.fromLTRB(0,SizeConfig.blockSizeHeight*2,SizeConfig.blockSizeWidth*85,0),
                    child: InkWell(child: Icon(Icons.arrow_back,color:Colors.black),
                    onTap: (){},
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeHeight * 1.5,
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: SizeConfig.blockSizeHeight * 3),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeHeight * 1,
                  ),
                  Text(
                    'Enter your Sign Up details !',
                    style: TextStyle(fontSize: SizeConfig.blockSizeHeight * 1.8),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeHeight * 6,
                  ),
                  nameTextField(),
                  SizedBox(
                    height: SizeConfig.blockSizeHeight * 2,
                  ),
                  emailTextField(),
                  SizedBox(
                    height: SizeConfig.blockSizeHeight * 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(decoration: BoxDecoration(

                          border: Border.all(color: Colors.blueGrey, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                        width: SizeConfig.blockSizeWidth * 15,
                        height: SizeConfig.blockSizeHeight * 7,
                        child: Center(
                          child: TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                  labelText: "+91",
                                  labelStyle: TextStyle(

                                      color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(10.0),
                                    ),
                                  ))),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeWidth * 5,
                      ),
                      Container(
                        width: SizeConfig.blockSizeWidth * 65,
                        child: mobileNumberTextField(),
                      ),
                    ],
                  ),
                  Spacer(),
                  SizedBox(height: pHeight*.10),
                  termsAndConditions(),
                  verifyButton(),
                  Spacer()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
