import 'package:flutter/material.dart';
import 'package:uberapp/components/icon_button.dart';
import 'package:uberapp/components/input_icon.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 2,
                  spreadRadius: 1,
                )
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // back button
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(Icons.arrow_back),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      InputIcon(
                        icon: const Icon(Icons.location_on_outlined),
                        placeholder: "Enter Pickup Point",
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 0),
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10),
                      InputIcon(
                        icon: const Icon(Icons.pin_drop_outlined),
                        placeholder: "Enter Pickup Point",
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 0),
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset("assets/images/map.png", fit: BoxFit.cover),
                Positioned(
                  bottom: 80,
                  right: 20,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.my_location),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 20,
                  left: 20,
                  child: TextIconButton(
                    bgColor: Colors.black,
                    text: 'Done',
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    onPress: () {},
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
