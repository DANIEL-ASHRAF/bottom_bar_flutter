import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class TabValue extends ChangeNotifier{
int _selectedTab=0;

int get selectedTab=>_selectedTab;

  void changeSelectedTab(int index) {
    _selectedTab=index;
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

}