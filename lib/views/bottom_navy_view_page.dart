import 'package:bottom_bar/helper/navigator_page.dart';
import 'package:bottom_bar/views/first_view_page.dart';
import 'package:bottom_bar/views/second_view_page.dart';
import 'package:bottom_bar/views/third_view_page.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'fourth_view_page.dart';

class BottomNavyViewPage extends StatefulWidget {

  @override
  _BottomNavyViewPageState createState() => _BottomNavyViewPageState();
}

class _BottomNavyViewPageState extends State<BottomNavyViewPage> {
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
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
//            _pageController.animateToPage(index,
//                duration: Duration(milliseconds: 300), curve: Curves.ease);
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text('Home'),
              textAlign: TextAlign.center,
              activeColor: Colors.red,
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.people),
                title: Text('Users'),
                textAlign: TextAlign.center,
                activeColor: Colors.purpleAccent
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.message),
                title: Text('Messages'),
                textAlign: TextAlign.center,
                activeColor: Colors.pink
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
                textAlign: TextAlign.center,
                activeColor: Colors.blue
            ),
          ],
        )
    );
  }

  //Bye Bye XD
//  Widget _buildPages() {
//    switch(_selectedIndex){
//      case 0:
//        return FirstViewPage();
//      case 1:
//        return SecondViewPage();
//      case 2:
//        return ThirdViewPage();
//      case 3:
//        return FourthViewPage();
//      default :
//        return FirstViewPage();
//    }
//  }
}
