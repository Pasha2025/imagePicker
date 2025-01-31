import 'package:flutter/material.dart';
import 'package:pasha_debugd/screens/registration_screen.dart';

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
      Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          keyboardType: TextInputType.phone,
          maxLength: 10,
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.black),
              hintText: "Enter Password",
              prefix: Icon(Icons.password),
              counterText: "",
              border: OutlineInputBorder()),
        ),
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => RegistrationScreen()));
          },
          child: Text("Registraion", style: TextStyle(color: Colors.pink))),
      ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(
            //     MaterialPageRoute(builder: (ctx) => RegistrationScreen()));
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) => RegistrationScreen()));
          },
          child: Text("Login", style: TextStyle(color: Colors.pink))),
    ]));
  }
}
