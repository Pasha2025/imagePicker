import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pasha_debugd/screens/login.dart';

@override
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushNamedAndRemoveUntil("/login", (route) => false);
      // Navigator.of(context).pushAndRemoveUntil(
      //     MaterialPageRoute(builder: (ctx) => LoginScreen()), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: CachedNetworkImage(
                height: 200,
                width: 200,
                imageUrl:
                    "https://th.bing.com/th/id/OIP.XAuYSVkhX9E8uZNJ2ukLvwAAAA?rs=1&pid=ImgDetMain"),
          ),
          Text(
            "WELCOME APP",
            style: TextStyle(color: Colors.red),
          )
        ],
      ),
    );
  }
}
