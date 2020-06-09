import 'package:flutter/material.dart';

class OtherLoginOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              'Also Login With',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: new Image.asset("assets/fblogo.png"),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: new Image.asset("assets/googlelogo.png"),
            )
          ],
        ),
      ),
    );
  }
}
