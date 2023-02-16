import 'package:flutter/material.dart';
import 'package:uberapp/components/constants.dart';
import 'package:uberapp/components/icon_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getStartedBG,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              const Text(appName,
                  style: TextStyle(
                      color: Colors.white, fontSize: 50, fontFamily: "Uber")),
              const SizedBox(height: 70),
              SvgPicture.asset(
                "assets/svg/security.svg",
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 80),
              const Text("Move with Safety",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 38,
                      fontFamily: "Uber")),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: const TextIconButton(
                    radius: 0,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    bgColor: Colors.black,
                    text: "Get Started",
                    endIcon: true,
                    textStyle: TextStyle(
                        color: Colors.white, fontSize: 20, fontFamily: "Uber"),
                    icon: Icon(Icons.arrow_forward,
                        color: Colors.white, size: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
