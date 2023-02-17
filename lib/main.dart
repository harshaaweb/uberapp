import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uberapp/components/navigation_bar.dart';
import 'package:uberapp/pages/delivery.dart';
import 'package:uberapp/pages/get_started.dart';
import 'package:uberapp/pages/login.dart';
import 'package:uberapp/pages/otp_verification.dart';
import 'package:uberapp/pages/premium.dart';
import 'package:uberapp/pages/search_page.dart';
import 'package:uberapp/pages/user_name.dart';
import 'package:uberapp/pages/terms_policy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      scrollBehavior: AppScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const CustomNavigation(),
        '/search': (context) => const SearchPage(),
        '/start': (context) => const GetStarted(),
        '/login': (context) => const Login(),
        '/otp_verification': (context) => const OtpVerification(),
        '/user_name': (context) => const UserName(),
        '/terms-policy': (context) => const TermsAndPolicy(),
        '/delivery': (context) => const Delivery(),
        '/premium': (context) => const PremiumService(),
      },
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
