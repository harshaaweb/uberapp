import 'package:flutter/material.dart';
import 'package:uberapp/components/icon_button.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GestureDetector(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
            const Text("Enter the 4-Digit code sent to you at +91 XXXXX 00022",
                style: TextStyle(color: Colors.black, fontSize: 23)),
            const SizedBox(height: 20),
            // for boxes with otp single digit
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _otpTextField(
                  context,
                  true,
                  first: true,
                ),
                _otpTextField(context, false),
                _otpTextField(context, false),
                _otpTextField(context, false, nextFocus: false),
              ],
            ),

            const SizedBox(height: 20),
            // for resend otp
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 150,
                child: TextIconButton(
                  radius: 50,
                  padding: const EdgeInsets.all(15),
                  bgColor: Colors.grey.shade200,
                  text: "Resend OTP",
                  textStyle:
                      TextStyle(color: Colors.grey.shade800, fontSize: 16),
                ),
              ),
            )
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
                  Navigator.pushNamed(context, "/user_name");
                },
                radius: 50,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                bgColor: Colors.grey.shade100,
                endIcon: true,
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey.shade600,
                  size: 22,
                ),
                text: "Next",
                textStyle: TextStyle(fontSize: 18, color: Colors.grey.shade600),
              )
            ],
          )),
    );
  }
}

Widget _otpTextField(BuildContext context, bool autoFocus,
    {bool nextFocus = true, bool first = false}) {
  return Container(
    height: MediaQuery.of(context).size.shortestSide * 0.13,
    margin: const EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(5),
      color: Colors.white,
      shape: BoxShape.rectangle,
    ),
    child: AspectRatio(
      aspectRatio: 1,
      child: TextField(
        autofocus: autoFocus,
        decoration: const InputDecoration(
          counterText: "",
          border: InputBorder.none,
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(),
        maxLength: 1,
        onChanged: (value) {
          if (nextFocus && value.isNotEmpty) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    ),
  );
}
