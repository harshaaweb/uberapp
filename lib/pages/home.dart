import 'package:flutter/material.dart';
import 'package:uberapp/components/Icon_box.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  const Icon(Icons.search),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Pickup Point",
                      ),
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // two menu with icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBox1(
                  boxWidth: MediaQuery.of(context).size.width / 2.15,
                  boxHeight: 80,
                  haveShadow: false,
                  children: const [
                    SizedBox(height: 5),
                    Icon(
                      Icons.car_rental,
                      size: 30,
                    ),
                    Text("Ride"),
                    SizedBox(height: 5),
                  ],
                ),
                IconBox1(
                  boxWidth: MediaQuery.of(context).size.width / 2.15,
                  boxHeight: 80,
                  haveShadow: false,
                  children: const [
                    SizedBox(height: 5),
                    Icon(
                      Icons.car_rental,
                      size: 30,
                    ),
                    Text("Ride"),
                    SizedBox(height: 5),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBox1(
                  boxWidth: MediaQuery.of(context).size.width / 4.5,
                  boxHeight: 80,
                  haveShadow: false,
                  children: const [
                    SizedBox(height: 5),
                    Icon(
                      Icons.car_rental,
                      size: 30,
                    ),
                    Text("Ride"),
                    SizedBox(height: 5),
                  ],
                ),
                IconBox1(
                  boxWidth: MediaQuery.of(context).size.width / 4.5,
                  boxHeight: 80,
                  haveShadow: false,
                  children: const [
                    SizedBox(height: 5),
                    Icon(
                      Icons.delivery_dining_outlined,
                      size: 30,
                    ),
                    Text("Delivery"),
                    SizedBox(height: 5),
                  ],
                ),
                IconBox1(
                  boxWidth: MediaQuery.of(context).size.width / 4.5,
                  boxHeight: 80,
                  haveShadow: false,
                  children: const [
                    SizedBox(height: 5),
                    Icon(
                      Icons.privacy_tip_outlined,
                      size: 30,
                    ),
                    Text("Private"),
                    SizedBox(height: 5),
                  ],
                ),
                IconBox1(
                  boxWidth: MediaQuery.of(context).size.width / 4.5,
                  boxHeight: 80,
                  haveShadow: false,
                  children: const [
                    SizedBox(height: 5),
                    Icon(
                      Icons.watch_later_outlined,
                      size: 30,
                    ),
                    Text("Hourly"),
                    SizedBox(height: 5),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                children: [
                  Card(
                    child: Container(
                      height: 200,
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade600,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            "Want to go somewhere?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: const Text(
                              "We have a wide range of cars for you to choose from",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/search");
                            },
                            child: Row(children: const [
                              Text(
                                "Book a ride now",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward,
                                size: 25,
                                color: Colors.white,
                              ),
                            ]),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 200,
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade600,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            "Want to go somewhere?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: const Text(
                              "We have a wide range of cars for you to choose from",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/premium");
                            },
                            child: Row(children: const [
                              Text(
                                "Check Premium Services",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward,
                                size: 25,
                                color: Colors.white,
                              ),
                            ]),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 200,
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.green.shade600,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            "Want to go somewhere?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: const Text(
                              "We have a wide range of cars for you to choose from",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/search");
                            },
                            child: Row(children: const [
                              Text(
                                "Book a ride now",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward,
                                size: 25,
                                color: Colors.white,
                              ),
                            ]),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // map image
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/map.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
