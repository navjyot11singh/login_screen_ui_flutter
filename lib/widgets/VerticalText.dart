import 'package:flutter/material.dart';

class VerticalText extends StatelessWidget {
  final String name;
  final bool isChecked;

  VerticalText(this.name, this.isChecked);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20),
            child: RotatedBox(
              quarterTurns: 1,
              child: Text(
                name,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          if (isChecked)
            Container(
              height: 30,
              width: 30,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            ),
        ],
      ),
    );
  }
}
