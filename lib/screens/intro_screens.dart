import 'package:flutter/material.dart';
import 'package:wetaxi/Screens/home_screen.dart';

class IntroScreen1 extends StatefulWidget {
  @override
  _IntroScreen1State createState() => _IntroScreen1State();
}

class _IntroScreen1State extends State<IntroScreen1> {
  @override
  Widget build(BuildContext context) {
    double pHeight = MediaQuery.of(context).size.height;
    double pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: pHeight,
      width: pWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/bg1.png",
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset(
              'assets/intro1.png',
              height: pHeight * 0.3,
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              'Book Cabs Online',
              style: TextStyle(
                  fontSize: pHeight * 0.03, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: pHeight * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: pWidth * 0.1),
              child: Text(
                'You can find the required cabs near you and travel to your favourite destination',
                style: TextStyle(fontSize: pHeight * 0.016),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IntroScreen2(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB( pWidth * 0.12,pHeight*.1,pWidth*0.08,0),
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                          fontSize: pHeight * 0.025,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    ));
  }
}

class IntroScreen2 extends StatefulWidget {
  @override
  _IntroScreen2State createState() => _IntroScreen2State();
}

class _IntroScreen2State extends State<IntroScreen2> {
  @override
  Widget build(BuildContext context) {
    double pHeight = MediaQuery.of(context).size.height;
    double pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: pHeight,
      width: pWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/bg1.png",
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset(
              'assets/intro2.png',
              height: pHeight * 0.3,
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              'Tours and Packages',
              style: TextStyle(
                  fontSize: pHeight * 0.03, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: pHeight * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: pWidth * 0.1),
              child: Text(
                'Find your favourite travel spots.\nSelect the packages you need and get offers.',
                style: TextStyle(fontSize: pHeight * 0.016),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IntroScreen3(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB( pWidth * 0.12,pHeight*.1,pWidth*0.08,0),
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                          fontSize: pHeight * 0.025,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    ));
  }
}
class IntroScreen3 extends StatefulWidget {
  @override
  _IntroScreen3State createState() => _IntroScreen3State();
}

class _IntroScreen3State extends State<IntroScreen3> {
  @override
  Widget build(BuildContext context) {
    double pHeight = MediaQuery.of(context).size.height;
    double pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          height: pHeight,
          width: pWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/bg1.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Spacer(
                  flex: 2,
                ),
                Image.asset(
                  'assets/intro3.png',
                  height: pHeight * 0.3,
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  'Business',
                  style: TextStyle(
                      fontSize: pHeight * 0.03, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: pHeight * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pWidth * 0.1),
                  child: Text(
                    'Create your own business profiles to sell your\n products and search to buy the product you need',
                    style: TextStyle(fontSize: pHeight * 0.016),
                    textAlign: TextAlign.center,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IntroScreen4(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB( pWidth * 0.12,pHeight*.1,pWidth*0.08,0),
                        child: Text(
                          'NEXT',
                          style: TextStyle(
                              fontSize: pHeight * 0.025,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
        ));
  }
}
class IntroScreen4 extends StatefulWidget {
  @override
  _IntroScreen4State createState() => _IntroScreen4State();
}

class _IntroScreen4State extends State<IntroScreen4> {
  @override
  Widget build(BuildContext context) {
    double pHeight = MediaQuery.of(context).size.height;
    double pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          height: pHeight,
          width: pWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/bg1.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Spacer(
                  flex: 2,
                ),
                Image.asset(
                  'assets/intro4.png',
                  height: pHeight * 0.3,
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  'Rewards And Earning',
                  style: TextStyle(
                      fontSize: pHeight * 0.03, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: pHeight * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pWidth * 0.1),
                  child: Text(
                    'Make referral asset by referring your friends ,\n  Earn for each trip made by all your assets.\nDevelop your business by promoting. ',
                    style: TextStyle(fontSize: pHeight * 0.016),
                    textAlign: TextAlign.center,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB( pWidth * 0.12,pHeight*.1,pWidth*0.08,0),
                        child: Text(
                          'NEXT',
                          style: TextStyle(
                              fontSize: pHeight * 0.025,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
        ));
  }
}
