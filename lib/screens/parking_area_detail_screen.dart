import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:garage_app/utils/functions.dart';

class ParkingAreaDetailScreen extends StatefulWidget {
  const ParkingAreaDetailScreen({super.key});
static const String routeName = "/parking-area-detail";
  @override
  State<ParkingAreaDetailScreen> createState() => _ParkingAreaDetailScreenState();
}

class _ParkingAreaDetailScreenState extends State<ParkingAreaDetailScreen> {
  final CustomNavigation _navigation = CustomNavigation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


                  IconButton(
            color: Colors.grey.shade600,
            onPressed: () {
              _navigation.navigatePop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        const Text("parking detail ,Booked now")
      ]),
    );
  }
}