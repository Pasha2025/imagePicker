import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          Icons.person,
          size: 110,
        ),
        ElevatedButton(
            onPressed: () {},
            child: Text("Register", style: TextStyle(color: Colors.pink))),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            keyboardType: TextInputType.phone,
            maxLength: 10,
            decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.black),
                hintText: "Enter Phone Number",
                prefix: Icon(Icons.phone),
                counterText: "",
                border: OutlineInputBorder()),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 4,
            //keyboardType: TextInputType.phone,
            maxLength: 10,
            decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                hintText: "Enter Bio Data ",
                counterText: "",
                border: OutlineInputBorder()),
          ),
        ),
      ]),
    );
  }
}
