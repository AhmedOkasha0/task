import 'package:flutter/material.dart';
import 'package:task/core/routes/no_route.dart';
import 'package:task/core/routes/routes.dart';
import 'package:task/features/home/presentation/screen/home_screen.dart';
import 'package:task/features/maps/presentation/screen/map_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          switch (settings.name) {
            case Routes.home:
              return const MapPage();
            case Routes.map:
              return HomeScreen();
            default:
              return NoRouteScreen(roteName: settings.name!);
          }
        });
  }
}
