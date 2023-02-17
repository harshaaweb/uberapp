import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PremiumService extends StatefulWidget {
  const PremiumService({super.key});

  @override
  State<PremiumService> createState() => _PremiumServiceState();
}

class _PremiumServiceState extends State<PremiumService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Image.asset(
                    "assets/images/cars.jpg",
                    fit: BoxFit.cover,
                  )),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black87,
                        size: 30,
                      ),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: const [
                Text(
                  "Travel all together in one premium ride.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Uber",
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(
                  "Choose Uber Black SUV for elevated service in premium cars offering space for up to 6 riders. Let your driver know before pickup what kind of trip environment you d like.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontFamily: "Uber",
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          color: Colors.black,
          child: Text("Go Big, Go Premium",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "Uber",
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
