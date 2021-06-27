import 'package:bottom_bar/app/app.locator.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

//for navigation
NavigationService _navigationService=locator<NavigationService>();

//navigation without animation
Future navigateWithoutAnimation(Widget widget)async{
  await _navigationService.navigateWithTransition(widget,transition:"",duration: Duration(seconds: 0));
}

Future navigateAndRemoveUntil(String routeName)async{
  await _navigationService.pushNamedAndRemoveUntil(routeName,predicate:(Route<dynamic> route) => false);
}