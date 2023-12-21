import 'package:flutter/material.dart';
import 'package:navigation_routing_demo/utils/routes.dart';
import 'package:navigation_routing_demo/utils/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naviagtion and Routing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: HomeScreen.id,
      // routes: {
      //   HomeScreen.id: (context) => const HomeScreen(),
      //   ScreenTwo.id: (context) => const ScreenTwo(),
      // },
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
