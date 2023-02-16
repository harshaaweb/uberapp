import 'package:flutter/material.dart';
import 'package:uberapp/pages/Activity.dart';
import 'package:uberapp/pages/account.dart';
import 'package:uberapp/pages/home.dart';
import 'package:uberapp/pages/service.dart';

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({super.key});

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  int _index = 0;
  final Map _screens = {
    0: {
      "title": "Home",
      "icon": Icons.home_outlined,
      "screen": const Home(),
    },
    1: {
      "title": "Service",
      "icon": Icons.grid_view_outlined,
      "screen": const Services(),
    },
    2: {
      "title": "Activity",
      "icon": Icons.grain_sharp,
      "screen": const Activity(),
    },
    3: {
      "title": "Account",
      "icon": Icons.person_outline,
      "screen": const Account(),
    },
  };

  Widget _buildBottomBar(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        for (var i = 0; i < _screens.length; i++)
          GestureDetector(
            onTap: () {
              setState(() {
                _index = i;
              });
            },
            child: Container(
              width: 80,
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 25,
                    child: Icon(_screens[i]["icon"],
                        size: 25,
                        color: _index == i ? Colors.black : Colors.black54),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    _screens[i]["title"],
                    style: TextStyle(
                        color: _index == i ? Colors.black : Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_index]["screen"],
      bottomNavigationBar: _buildBottomBar(context),
    );
  }
}
