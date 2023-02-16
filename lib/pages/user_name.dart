import 'package:flutter/material.dart';
import 'package:uberapp/components/input_icon.dart';
import 'package:uberapp/components/icon_button.dart';

class UserName extends StatefulWidget {
  const UserName({super.key});

  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GestureDetector(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("What's your name ?",
                style: TextStyle(color: Colors.black, fontSize: 23)),
            const Text("Let us know how to properly address you.",
                style: TextStyle(color: Colors.black, fontSize: 18)),
            const SizedBox(height: 20),
            InputIcon(
              placeholder: "Your First Name",
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
              hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 16),
            ),
            const SizedBox(height: 20),
            InputIcon(
              placeholder: "Your Last Name",
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
              hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 16),
            ),
            // for boxes with otp single digit
          ]),
        ),
      )),
      bottomNavigationBar: Container(
          margin: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(Icons.arrow_back)),
              ),

              // for next button
              TextIconButton(
                onPress: () {
                  Navigator.pushNamed(context, "/terms-policy");
                },
                radius: 50,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                bgColor: Colors.black,
                endIcon: true,
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 22,
                ),
                text: "Next",
                textStyle: const TextStyle(fontSize: 18, color: Colors.white),
              )
            ],
          )),
    );
  }
}
