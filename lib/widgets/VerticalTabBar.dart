import 'package:flutter/material.dart';

import 'VerticalText.dart';

class VerticalTabBar extends StatefulWidget {
  final Function(int) onCountChange;
  final VoidCallback onTabSelected;
  VerticalTabBar({@required this.onCountChange,this.onTabSelected});

  @override
  _VerticalTabBarState createState() => _VerticalTabBarState();
}

class _VerticalTabBarState extends State<VerticalTabBar> {
  List<String> _textList = ["Login", "Sign Up", "Forgot Password"];

  int checkIndex = 0; //by default the item selected in tab is the 1st one
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: _tabBarList(),
      ),
    );
  }

  List<Widget> _tabBarList() {
    List<Widget> _listWidget = [];
    for (int i = 0; i < _textList.length; i++) {
      _listWidget.add(GestureDetector(
          onTap: () {
            indexChecked(i);
            widget.onCountChange(i);//returning count to the parent widget
            widget.onTabSelected();//indicating the tab selection to parent
          },
          child: VerticalText(_textList[i],checkIndex==i)));
      _listWidget.add(Container(height: 30,));
    }
    return _listWidget;
  }

  indexChecked(int i) {
    if (checkIndex == i) return;
    setState(() {
      checkIndex = i;
    });
  }


}
