import 'package:flutter/material.dart';
import 'package:uberapp/components/icon_box.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Harsh Singh",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // rating
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(Icons.star),
                        SizedBox(width: 5),
                        Text("4.5"),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Icon(
                    Icons.person_outline,
                    size: 40,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBox1(
                boxHeight: MediaQuery.of(context).size.width / 3.3,
                boxWidth: MediaQuery.of(context).size.width / 3.3,
                haveShadow: false,
                children: const [
                  Icon(
                    Icons.help_outline,
                    size: 40,
                  ),
                  Text(
                    "Help",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              IconBox1(
                boxHeight: MediaQuery.of(context).size.width / 3.3,
                boxWidth: MediaQuery.of(context).size.width / 3.3,
                haveShadow: false,
                children: const [
                  Icon(
                    Icons.wallet_outlined,
                    size: 40,
                  ),
                  Text(
                    "Wallet",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              IconBox1(
                boxHeight: MediaQuery.of(context).size.width / 3.3,
                boxWidth: MediaQuery.of(context).size.width / 3.3,
                haveShadow: false,
                children: const [
                  Icon(
                    Icons.timer_outlined,
                    size: 40,
                  ),
                  Text(
                    "Trips",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              children: const [
                ListTile(
                  tileColor: Colors.white,
                  leading: Icon(Icons.message_outlined),
                  title: Text("Message"),
                ),
                ListTile(
                  tileColor: Colors.white,
                  leading: Icon(Icons.payment_outlined),
                  title: Text("Promotions"),
                ),
                ListTile(
                  tileColor: Colors.white,
                  leading: Icon(Icons.favorite_outline),
                  title: Text("Favorite"),
                ),
                ListTile(
                  tileColor: Colors.white,
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
                ListTile(
                  tileColor: Colors.white,
                  leading: Icon(Icons.help_outline),
                  title: Text("Legal"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
