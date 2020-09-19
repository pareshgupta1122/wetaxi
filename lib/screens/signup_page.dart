import 'package:flutter/material.dart';
import 'package:wetaxi/constants/endpoints.dart';
import 'package:wetaxi/data/network/api_helper.dart';
import 'package:wetaxi/services/size_config.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileNumberController = TextEditingController();

  var contentPadding = EdgeInsets.only(left: SizeConfig.blockSizeWidth * 2);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    @override
    void dispose() {
      nameController.dispose();
      emailController.dispose();
      mobileNumberController.dispose();
      super.dispose();
    }

    Widget nameTextField() {
      return TextFormField(
        cursorColor: Colors.black,
        controller: nameController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            labelText: "Enter your Name",
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            )),
      );
    }

    Widget emailTextField() {
      return TextFormField(
        cursorColor: Colors.black,
        keyboardType: TextInputType.emailAddress,
        controller: emailController,
        decoration: InputDecoration(
            labelText: "Enter your Email",
            fillColor: Colors.white,
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
            labelText: "Enter your Number",
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            )),
      );
    }

    void _verifyData() {
      ApiHelper apiHelper = ApiHelper();
      String name = nameController.text;
      String email = emailController.text;
      String stdCode = "91";
      String mobileNumber = mobileNumberController.text;
      print('$name $email $stdCode $mobileNumber');

      Map register = {
        "first_name": name,
        "last_name": name,
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
          height: SizeConfig.blockSizeHeight * 7.5,
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
                  Spacer(),
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: SizeConfig.blockSizeHeight * 3),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeHeight * 1,
                  ),
                  Text(
                    'Enter your Sign Up details !',
                    style: TextStyle(fontSize: SizeConfig.blockSizeHeight * 3),
                  ),
                  Spacer(),
                  nameTextField(),
                  SizedBox(
                    height: SizeConfig.blockSizeHeight * 4,
                  ),
                  emailTextField(),
                  SizedBox(
                    height: SizeConfig.blockSizeHeight * 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeWidth * 15,
                        child: Center(
                          child: TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                  labelText: "+91",
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38),
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
