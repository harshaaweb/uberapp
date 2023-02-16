import 'package:flutter/material.dart';
import 'package:uberapp/components/icon_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TermsAndPolicy extends StatefulWidget {
  const TermsAndPolicy({super.key});

  @override
  State<TermsAndPolicy> createState() => _TermsAndPolicyState();
}

class _TermsAndPolicyState extends State<TermsAndPolicy> {
  bool __value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 150,
                      width: 150,
                      child: SvgPicture.asset("assets/svg/terms.svg")),
                  const Text(
                    "Accept Uber's\nTerms and Review\nPolicy Notice",
                    style: TextStyle(
                        height: 1.5,
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  "By selecting \"I agree\" below, I have reviewed and agree to the you agree to the Terms of Use and acknowledge the Privacy Notice. I am at least 18 years age.",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "I agree.",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Checkbox(
                    value: __value,
                    onChanged: (val) {
                      setState(() {
                        __value = val!;
                      });
                    },
                  )
                ],
              ),
              Container(
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
                          Navigator.pushNamed(context, "/");
                        },
                        radius: 50,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 13),
                        bgColor: Colors.black,
                        endIcon: true,
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 22,
                        ),
                        text: "Next",
                        textStyle:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      )
                    ],
                  )),
              // for boxes with otp single digit
            ]),
          ),
        ),
      )),
    );
  }
}
