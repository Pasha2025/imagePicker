//import 'package:pasha_debugd/screens/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:pasha_debugd/screens/counter_screen.dart';
//import 'package:pasha_debugd/screens/images.dart';
import 'package:pasha_debugd/screens/registration_screen.dart';
//import 'package:pasha_debugd/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DebugD',
      theme: ThemeData(
        textTheme: GoogleFonts.ovoTextTheme(),
        primarySwatch: Colors.blue,
      ),
      // home: MyHomeScreen(),
      // home: LoginScreen(),
      //home: RowColumnStack(),
      // home: Images(),
      // home: DashboardScreen(),
      home: RegistrationScreen(),
      // home: CounterScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("DebugD"),
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.pink,
              border: Border.all(color: Colors.black, width: 12)),
          alignment: Alignment.center,
          child: Text(
            "i am container",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.favorite,
          color: Colors.red,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.verified_user), label: "profile"),
      ]),
    );
  }
}
