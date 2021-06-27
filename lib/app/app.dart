import 'package:bottom_bar/views/bottom_convex_view_page.dart';
import 'package:bottom_bar/views/bottom_navy_view_page.dart';
import 'package:bottom_bar/views/bottom_persistent_view_page.dart';
import 'package:bottom_bar/views/fifth_view_page.dart';
import 'package:bottom_bar/views/first_view_page.dart';
import 'package:bottom_bar/views/fourth_view_page.dart';
import 'package:bottom_bar/views/second_view_page.dart';
import 'package:bottom_bar/views/third_view_page.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
    routes: [
      MaterialRoute(page: FirstViewPage),
      MaterialRoute(page: SecondViewPage),
      MaterialRoute(page: ThirdViewPage),
      MaterialRoute(page: FourthViewPage),
      MaterialRoute(page: FifthViewPage),
      MaterialRoute(page: BottomConvexViewPage, initial: true),
      MaterialRoute(page: BottomNavyViewPage),
      MaterialRoute(page: BottomPersistentViewPage),
    ],
    dependencies: [
      LazySingleton(classType: NavigationService),
      LazySingleton(classType: DialogService),
      LazySingleton(classType: SnackbarService),
      LazySingleton(classType: BottomSheetService),
    ]
)
class AppSetup {}