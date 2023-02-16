import 'package:flutter/material.dart';
import 'package:uberapp/components/input_icon.dart';
import 'package:uberapp/components/icon_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Text("Login with Mobile Number",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    )),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButton(
                          underline: const SizedBox(),
                          items: const [
                            DropdownMenuItem(
                              value: 1,
                              child: Text("India (+91)"),
                            ),
                            DropdownMenuItem(
                              value: 2,
                              child: Text("USA (+1)"),
                            ),
                          ],
                          value: 1,
                          onChanged: (value) {}),
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: InputIcon(
                        endIcon: true,
                        icon: Icon(
                          Icons.phone,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                TextIconButton(
                  onPress: () {
                    Navigator.pushNamed(context, "/otp_verification");
                  },
                  text: "Continue",
                  textStyle: const TextStyle(color: Colors.white, fontSize: 17),
                  bgColor: Colors.black,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text("OR"),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextIconButton(
                  icon: Image.asset(
                    "assets/images/google.png",
                    width: 25,
                  ),
                  text: "Continue with Google",
                  textStyle: const TextStyle(color: Colors.black, fontSize: 17),
                ),
                const SizedBox(height: 20),
                TextIconButton(
                  icon: Image.asset(
                    "assets/images/facebook.png",
                    width: 22,
                  ),
                  text: "Continue with Facebook",
                  textStyle: const TextStyle(color: Colors.black, fontSize: 17),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text("OR"),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const TextIconButton(
                  icon: Icon(Icons.search_outlined),
                  bgColor: Colors.transparent,
                  text: "Find My Account",
                  textStyle: TextStyle(color: Colors.black, fontSize: 17),
                ),
                const SizedBox(height: 20),
                const Text(
                  "By proceeding, you consent to get Calls, WhatsApp or Text messages, including by automated means, from Uber and its affiliates to the number you provided.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        )),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Text(
            "This site is protected by reCAPTCHA and the Google's Privacy Policy and Terms & Services apply.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
        ));
  }
}
