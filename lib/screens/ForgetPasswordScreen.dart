import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginscreenuiflutter/utils/size.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _topImage(),
              _welcomeText(),
              SizedBox(
                height: Sizes.s50,
              ),
              _loginText(),
              SizedBox(
                height: Sizes.s40,
              ),
              _emailIdWidget(),
              SizedBox(
                height: Sizes.s30,
              ),
              _loginButton(),
              _forgotpassDesignText(),
            ],
          ),
        ),
      ),
    );
  }

  _topImage() {
    return Image(
      image: AssetImage(
        "assets/loginscreenicon.png",
      ),
      height: Sizes.s200,
      width: Sizes.s500,
    );
  }

  _welcomeText() {
    return RichText(
      text: TextSpan(
          text: "Welcome to",
          style: GoogleFonts.lato(
              textStyle: TextStyle(color: Colors.black, fontSize: FontSize.s16)),
          children: <TextSpan>[
            TextSpan(
              text: ', HotReloader.com',
              style: TextStyle(
                color: Colors.pink,
              ),
            )
          ]),
    );
  }

  _loginText() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: Sizes.s30),
          child: Text(
            'Forgot Password',
            textAlign: TextAlign.left,
            style: GoogleFonts.lato(
              textStyle: TextStyle(fontSize: Sizes.s20),
            ),
          ),
        )
      ],
    );
  }

  _emailIdWidget() {
    return Container(
      margin: EdgeInsets.only(left: Sizes.s30, right: Sizes.s30),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(Sizes.s20),
      ),
      child: TextField(
        style: TextStyle(
          fontSize: FontSize.s14,
        ),
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.person_outline),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding:
          EdgeInsets.only(left: Sizes.s15, bottom: Sizes.s10, top: Sizes.s10, right: Sizes.s15),
          hintText: "Email Id or username",
          hintStyle: GoogleFonts.lato(
            textStyle: TextStyle(
              color: Colors.grey.shade500,
            ),
          ),
        ),
      ),
    );
  }


  _loginButton() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: Sizes.s30),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Sizes.s18),
                side: BorderSide(color: Colors.pinkAccent)),
            onPressed: () {},
            color: Colors.pinkAccent,
            textColor: Colors.white,
            child: Text(
              "Get Your Password",
              style: GoogleFonts.lato(
                textStyle: TextStyle(fontSize: FontSize.s14),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _forgotpassDesignText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: Sizes.s20, right: Sizes.s10),
          child: RotatedBox(
            quarterTurns: 1,
            child: Text(
              'Forgot Pass',
              style: GoogleFonts.lato(
                textStyle: TextStyle(fontSize: FontSize.s30, color: Colors.pink.shade100),
              ),
            ),
          ),
        )
      ],
    );
  }
}
