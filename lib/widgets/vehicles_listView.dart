import 'package:flutter/material.dart';

class VehicleTypeList extends StatefulWidget {
  const VehicleTypeList({super.key});

  @override
  State<VehicleTypeList> createState() => _VehicleTypeListState();
}

class _VehicleTypeListState extends State<VehicleTypeList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 90,
            child: Card(
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset("icons/car.png", width: 30, fit: BoxFit.cover),
                    const SizedBox(
                      height: 3.0,
                    ),
                    const Text("Car",style: TextStyle(fontFamily: "ABeeZee",fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
