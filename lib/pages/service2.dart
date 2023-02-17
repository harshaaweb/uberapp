import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uberapp/components/icon_box.dart';
import 'package:uberapp/components/text_box.dart';
import 'package:uberapp/components/blog_card.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List<Map> data = [
    {
      "title": "Big title of the blog post",
      "subtitle": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "image": "https://picsum.photos/200"
    },
    {
      "title": "Second Blog Post - Battlegrounds Mobile India",
      "subtitle": "Second Blog Post Call of Duty available on play store.",
      "image":
          "https://plus.unsplash.com/premium_photo-1663851785930-a06baa8051dc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"
    },
    {
      "title": "Third Blog Post - Battlegrounds Mobile India",
      "subtitle":
          "Third Blog Post - Battlegrounds Mobile India. Lorem ipsum dolor sit amet. Battlegrounds Mobile India.",
      "image":
          "https://images.unsplash.com/photo-1676390812769-9fda945483fc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Services",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Go Anywhere, Get Anytime",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBox1(
                  boxHeight: MediaQuery.of(context).size.width / 3.4,
                  boxWidth: MediaQuery.of(context).size.width / 3.4,
                  haveShadow: false,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/car_ride.svg",
                      width: 50,
                      height: 50,
                    ),
                    const Text(
                      "Ride",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                IconBox1(
                  boxHeight: MediaQuery.of(context).size.width / 3.4,
                  boxWidth: MediaQuery.of(context).size.width / 3.4,
                  haveShadow: false,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/delivery.svg",
                      width: 50,
                      height: 50,
                    ),
                    const Text(
                      "Package",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                IconBox1(
                  boxHeight: MediaQuery.of(context).size.width / 3.4,
                  boxWidth: MediaQuery.of(context).size.width / 3.4,
                  haveShadow: false,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/reserve.svg",
                      width: 50,
                      height: 50,
                    ),
                    const Text(
                      "Reserve",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBox1(
                  boxHeight: MediaQuery.of(context).size.width / 4.6,
                  boxWidth: MediaQuery.of(context).size.width / 4.6,
                  haveShadow: false,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/hourly.svg",
                      width: 50,
                      height: 50,
                    ),
                    const Text(
                      "Hourly",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                IconBox1(
                  boxHeight: MediaQuery.of(context).size.width / 4.6,
                  boxWidth: MediaQuery.of(context).size.width / 4.6,
                  haveShadow: false,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/two_wheel.svg",
                      width: 50,
                      height: 50,
                    ),
                    const Text(
                      "2-Wheel",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                IconBox1(
                  boxHeight: MediaQuery.of(context).size.width / 4.6,
                  boxWidth: MediaQuery.of(context).size.width / 4.6,
                  haveShadow: false,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/explore.svg",
                      width: 50,
                      height: 50,
                    ),
                    const Text(
                      "Explore",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                IconBox1(
                  boxHeight: MediaQuery.of(context).size.width / 4.6,
                  boxWidth: MediaQuery.of(context).size.width / 4.6,
                  haveShadow: false,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/food.svg",
                      width: 50,
                      height: 50,
                    ),
                    const Text(
                      "Food",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Popular Blogs",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            // Blog Card
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 12,
                      ),
                  itemCount: data.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Map item = data[index];
                    return BlogCard(
                      title: item["title"],
                      subtitle: item["subtitle"],
                      image: item["image"],
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
