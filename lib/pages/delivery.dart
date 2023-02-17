import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uberapp/components/icon_button.dart';
import 'package:uberapp/components/input_icon.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  int __selectedTime = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          // Delivery Address
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  splashRadius: 24,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  "Delivery Address",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(),
              ],
            ),
          ),
          SizedBox(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset("assets/svg/ao.svg"),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const InputIcon(
              icon: Icon(Icons.location_on),
              placeholder: "Enter Delivery Address",
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.access_time),
                    const SizedBox(width: 10),
                    Expanded(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          items: const [
                            DropdownMenuItem(
                              value: 1,
                              child: Text("Delivery Now"),
                            ),
                            DropdownMenuItem(
                              value: 2,
                              child: Text("Tomorrow"),
                            ),
                            DropdownMenuItem(
                              value: 3,
                              child: Text("Next Week"),
                            ),
                          ],
                          value: __selectedTime,
                          onChanged: (value) {
                            setState(() {
                              __selectedTime = value!;
                            });
                          },
                          isExpanded: true,
                          isDense: true,
                          underline: const SizedBox(),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextIconButton(
              text: "Continue",
              onPress: () {},
              bgColor: Colors.black,
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
