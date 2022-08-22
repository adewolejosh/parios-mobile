
import 'package:auto_route/auto_route.dart';

import 'package:parios/main.dart';
import 'package:parios/screens/new_trip.dart';
import 'package:parios/screens/notification.dart';
import 'package:parios/screens/saved_trip.dart';
import 'package:parios/screens/user_account.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MyHomePage, initial: true),
    AutoRoute(page: NewTripScreen),
    AutoRoute(page: SavedTripScreen),
    AutoRoute(page: NotificationScreen),
    AutoRoute(page: UserAccountScreen),
  ],
)
class $AppRouter {}