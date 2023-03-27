import 'package:flutter/material.dart';
import 'package:garage_app/screens/explore_parking_screen.dart';
import 'package:garage_app/utils/functions.dart';

class ExploreParkingList extends StatelessWidget {
   ExploreParkingList({super.key});
  final String url =
      "https://img.freepik.com/free-photo/empty-parking-lot_1127-3299.jpg?w=1380&t=st=1679306972~exp=1679307572~hmac=58cce7118c3eec38e24ea4e2dfb4e82a30f0923a7d3a8ce7200f68ec471f78af";
  
 final AdaptiveTextSize adaptiveTextSize = const AdaptiveTextSize();
  final CustomNavigation _customNavigation =  CustomNavigation();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height:  MediaQuery.of(context).size.height*0.15,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return FittedBox(
                child: SizedBox(
                  width: 90,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.network(
                            url,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          const Text("Area"),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        
        SizedBox(
          width:adaptiveTextSize.getadaptiveTextSize(context, 100) ,
         

          child: ElevatedButton(
            onPressed: () {
              _customNavigation.navigatePushPageName(context, ExploreParkingArea.routeName);
            },
            style: ElevatedButton.styleFrom(shape:const StadiumBorder(),backgroundColor: const Color.fromARGB(255, 229, 99, 6),foregroundColor: Colors.white),
            child: const Text("Explore"),
          ),
        ),
      ],
    );
  }
}
