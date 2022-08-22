// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../main.dart' as _i1;
import '../screens/new_trip.dart' as _i2;
import '../screens/notification.dart' as _i4;
import '../screens/saved_trip.dart' as _i3;
import '../screens/user_account.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MyHomePage());
    },
    NewTripScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.NewTripScreen());
    },
    SavedTripScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SavedTripScreen());
    },
    NotificationScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NotificationScreen());
    },
    UserAccountScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UserAccountScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(MyHomeRoute.name, path: '/'),
        _i6.RouteConfig(NewTripScreen.name, path: '/new-trip-screen'),
        _i6.RouteConfig(SavedTripScreen.name, path: '/saved-trip-screen'),
        _i6.RouteConfig(NotificationScreen.name, path: '/notification-screen'),
        _i6.RouteConfig(UserAccountScreen.name, path: '/user-account-screen')
      ];
}

/// generated route for
/// [_i1.MyHomePage]
class MyHomeRoute extends _i6.PageRouteInfo<void> {
  const MyHomeRoute() : super(MyHomeRoute.name, path: '/');

  static const String name = 'MyHomeRoute';
}

/// generated route for
/// [_i2.NewTripScreen]
class NewTripScreen extends _i6.PageRouteInfo<void> {
  const NewTripScreen() : super(NewTripScreen.name, path: '/new-trip-screen');

  static const String name = 'NewTripScreen';
}

/// generated route for
/// [_i3.SavedTripScreen]
class SavedTripScreen extends _i6.PageRouteInfo<void> {
  const SavedTripScreen()
      : super(SavedTripScreen.name, path: '/saved-trip-screen');

  static const String name = 'SavedTripScreen';
}

/// generated route for
/// [_i4.NotificationScreen]
class NotificationScreen extends _i6.PageRouteInfo<void> {
  const NotificationScreen()
      : super(NotificationScreen.name, path: '/notification-screen');

  static const String name = 'NotificationScreen';
}

/// generated route for
/// [_i5.UserAccountScreen]
class UserAccountScreen extends _i6.PageRouteInfo<void> {
  const UserAccountScreen()
      : super(UserAccountScreen.name, path: '/user-account-screen');

  static const String name = 'UserAccountScreen';
}
