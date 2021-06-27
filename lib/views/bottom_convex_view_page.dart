import 'package:bottom_bar/helper/navigator_page.dart';
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
        body: IndexedStack(
          index:_selectedIndex,
          children: [
            NavigatorPage(child: FirstViewPage()),
            NavigatorPage(child: SecondViewPage()),
            NavigatorPage(child: ThirdViewPage()),
            NavigatorPage(child: FourthViewPage()),
            NavigatorPage(child: FifthViewPage()),
          ],
        ),
        bottomNavigationBar: ConvexAppBar(
          top: -20,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          initialActiveIndex: _selectedIndex,//optional, default as 0
          onTap: (int index) =>setState(() {
            _selectedIndex = index;
          }),
        )
    );
  }
}