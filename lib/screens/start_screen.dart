import 'package:flutter/material.dart';

import 'package:garage_app/widgets/start_stack_image.dart';
import 'package:garage_app/widgets/start_stack_text.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class StartScreen extends StatelessWidget {
   StartScreen({super.key});
   GoogleMapController? myController;  
  
  final LatLng _center = const LatLng(45.521563, -122.677433);  
 void _onMapCreated(GoogleMapController controller) {  
    myController = controller;  
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Stack(children:   [
    
        const StackImage(),
         StackText(),
      ]),),
    );
  }
}