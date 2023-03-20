import 'package:flutter/material.dart';
import 'package:garage_app/widgets/explore_parking_list.dart';
import 'package:garage_app/widgets/vehicles_listView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = "/home-page";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: "Made an easy\n",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 40.0,
                    fontFamily: "Gobold_Hollow",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "parking\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                    fontFamily: "Anton",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "with us\n",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 40.0,
                    fontFamily: "Gobold_Hollow",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ])),
              Center(
                child: SizedBox(
                  height: 35,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      fillColor: Colors.grey[350],
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(90),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              const VehicleTypeList(),


            const SizedBox(height: 20.0,),
              const Text(
                "Explore your parking",
                style: TextStyle(
                  fontFamily: "ABeeZee",
                  color: Colors.black,
                fontWeight:FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0,),
 ExploreParkingList(),
            ],
          ),
        ),
      ),
    );
  }
}
