import 'package:flutter/material.dart';
import 'package:garage_app/screens/explore_parking_screen.dart';
import 'package:garage_app/screens/home_screen.dart';
import 'package:garage_app/screens/parking_area_detail_screen.dart';
import './screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
    initialRoute: "/",
      routes: {
        "/":(context) => StartScreen(),
        HomeScreen.routeName:(context) => const HomeScreen(),
        ExploreParkingArea.routeName:(context) => const ExploreParkingArea(),
        ParkingAreaDetailScreen.routeName:(context) => const ParkingAreaDetailScreen(),
      },
    );
  }
}
