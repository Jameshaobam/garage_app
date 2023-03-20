import 'package:flutter/material.dart';
import 'package:garage_app/screens/home_screen.dart';
import '../utils/functions.dart';

class StackText extends StatelessWidget {
   StackText({super.key});


CustomNavigation customNavigation = CustomNavigation();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width/2,
              child: RichText(   
                textAlign: TextAlign.center,
                text: const TextSpan(style: TextStyle(fontSize: 25.0),children: [
                TextSpan(text: "Find ",style: TextStyle(color: Colors.white)),
                     
                TextSpan(text: "the\ncheapest,closest",style: TextStyle(color: Colors.black)),
                TextSpan(text: " parking ",style: TextStyle(color: Colors.white)),
                TextSpan(text: "to your\ndestination",style: TextStyle(color: Colors.black)),
              ],),),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width/2,
              height: 50.0,
              child: ElevatedButton(onPressed: () {
              customNavigation.navigatePushReplacePageName(
              context, 
              HomeScreen.routeName);
              },style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow,foregroundColor: Colors.black), child: const Text("continue"),),
            )
      
          ],
        ),
      ),
    );
  }
}