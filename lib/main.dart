import 'package:bottom_bar/provider/tab_value.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:provider/provider.dart';
import 'app/app.locator.dart';
import 'app/app.router.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) =>
        MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => TabValue()),
            ],
          child: MyApp()), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom bar',
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.bottomConvexViewPage,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}