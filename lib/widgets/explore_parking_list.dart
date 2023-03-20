import 'package:flutter/material.dart';

class ExploreParkingList extends StatelessWidget {
    const ExploreParkingList({super.key});
 final  String url  = "https://img.freepik.com/free-photo/empty-parking-lot_1127-3299.jpg?w=1380&t=st=1679306972~exp=1679307572~hmac=58cce7118c3eec38e24ea4e2dfb4e82a30f0923a7d3a8ce7200f68ec471f78af";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return  SizedBox(
            width: 90,
            child: Card(
             
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(url,width: double.infinity,fit: BoxFit.cover,),
                    const Text("Area"),
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
