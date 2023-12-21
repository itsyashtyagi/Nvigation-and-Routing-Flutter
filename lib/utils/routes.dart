import 'package:flutter/material.dart';
import 'package:navigation_routing_demo/screens/home_screen.dart';
import 'package:navigation_routing_demo/screens/screen_two.dart';
import 'package:navigation_routing_demo/utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteName.screenTwo:
        return MaterialPageRoute(
            builder: (context) => ScreenTwo(
                  data: settings.arguments as Map<dynamic, dynamic>,
                ));
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text('No Route Defined'),
            ),
          );
        });
    }
  }
}
