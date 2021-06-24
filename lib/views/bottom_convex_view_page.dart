//the best 1 also XD
import 'package:bottom_bar/views/fifth_view_page.dart';
import 'package:bottom_bar/views/first_view_page.dart';
import 'package:bottom_bar/views/fourth_view_page.dart';
import 'package:bottom_bar/views/second_view_page.dart';
import 'package:bottom_bar/views/third_view_page.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class BottomConvexViewPage extends StatefulWidget {

  @override
  _BottomConvexViewPageState createState() => _BottomConvexViewPageState();
}

class _BottomConvexViewPageState extends State<BottomConvexViewPage> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _buildPages(),
        bottomNavigationBar: ConvexAppBar(
          top: -20,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          initialActiveIndex: 0,//optional, default as 0
          onTap: (int index) =>setState(() {
            _selectedIndex = index;
          }),
        )
    );
  }

  Widget _buildPages() {
    switch(_selectedIndex){
      case 0:
        return FirstViewPage();
      case 1:
        return SecondViewPage();
      case 2:
        return ThirdViewPage();
      case 3:
        return FourthViewPage();
      case 4:
        return FifthViewPage();
      default :
        return FirstViewPage();
    }
  }
}
