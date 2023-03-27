import 'package:flutter/material.dart';
import 'package:garage_app/screens/parking_area_detail_screen.dart';
import 'package:garage_app/utils/functions.dart';
import 'package:garage_app/widgets/text_search_feild.dart';

class ExploreParkingArea extends StatefulWidget {
  const ExploreParkingArea({super.key});
  static const String routeName = "/explore-parking";
  @override
  State<ExploreParkingArea> createState() => _ExploreParkingAreaState();
}

class _ExploreParkingAreaState extends State<ExploreParkingArea> {

  final CustomNavigation _customNavigation = CustomNavigation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            color: Colors.grey.shade600,
            onPressed: () {
              _customNavigation.navigatePop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          Center(
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height:
                    const AdaptiveTextSize().getadaptiveTextSize(context, 35),
                child: const TextSearchFeild()),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 6,
                    child: SizedBox(
                      width: const AdaptiveTextSize()
                          .getadaptiveTextSize(context, 100),
                      child: Text(
                        "Booked your Near parking lot",
                        style: TextStyle(
                          fontFamily: "Anton",
                          fontWeight: FontWeight.bold,
                          fontSize: const AdaptiveTextSize()
                              .getadaptiveTextSize(context, 25),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Image.asset(
                      "icons/car.png",
                      width:
                          const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    _customNavigation.navigatePushPageName(context, ParkingAreaDetailScreen.routeName);
                  },
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.92,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.asset(
                              "icons/car.png",
                              width: const AdaptiveTextSize()
                                  .getadaptiveTextSize(context, 50),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            flex: 7,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  const Text(
                                    "Ema market parking",
                                    style: TextStyle(fontFamily: "ABeeZee"),
                                  ),
                                  const Text(
                                    "Nagamapal,bazar,795001",
                                    style: TextStyle(fontFamily: "ABeeZee"),
                                  ),
                                  const Text(
                                    "53/hr",
                                    style: TextStyle(fontFamily: "ABeeZee"),
                                  ),
                                RichText(text: const TextSpan( text: "⭐",children:[
                                  TextSpan(text: "4.9",style: TextStyle(color: Colors.black))
                                ] ))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
