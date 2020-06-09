import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginscreenuiflutter/utils/size.dart';
import 'package:loginscreenuiflutter/widgets/OtherLoginOptions.dart';
import 'package:loginscreenuiflutter/widgets/VerticalTabBar.dart';

import 'ForgetPasswordScreen.dart';
import 'LoginScreen.dart';
import 'SignUpScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.3, 0.6, 1],
              colors: [Colors.blue, Colors.pinkAccent, Colors.blue]),
        ),
        child: Stack(
          children: <Widget>[
            VerticalTabBar(
              onCountChange: (int val) {
                setState(
                  () {
                    currentPage = val;
                  },
                );
              },
            ),
            OtherLoginOptions(),
            Container(
              margin: EdgeInsets.only(left: Sizes.s50, bottom: Sizes.s60),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(90)),
                child: _getWidget(),
              ), //returning the screen based on tab selection
            ),
          ],
        ),
      ),
    );
  }

  //returning the widget based on the page number
  Widget _getWidget() {
    if (currentPage == 0)
      return LoginScreen();
    else if (currentPage == 1)
      return SignUpScreen();
    else
      return ForgetPasswordScreen();
  }
}
