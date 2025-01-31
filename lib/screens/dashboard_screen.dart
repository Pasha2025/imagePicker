import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  String email;
  DashboardScreen({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard Screen"),
        ),
        body: Column(children: [
          Text("Loged in as $email"),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go Back"))
        ]));
  }
}
