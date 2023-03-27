import 'package:flutter/material.dart';


class TextSearchFeild extends StatelessWidget {
  const TextSearchFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
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
                    );
  }
}