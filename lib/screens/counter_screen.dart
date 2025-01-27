import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  Color myContainerColor = Colors.green;
  int count = 0;
  @override
  void initState() {
    //calls only ones
    // api fetching, runtime permission, locations,etc
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // call multiple times
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Counter Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            color: myContainerColor,
            child: CircleAvatar(
              radius: 10,
              child: Text("data"),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                myContainerColor = Colors.yellow;
                setState(() {});
                // print("color changed to yelow");
              },
              child: Text("change Color to yellow ")),
          ElevatedButton(
              onPressed: () {
                myContainerColor = Colors.red;
                setState(() {});
              },
              child: Text("change Color to Red")),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant CounterScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
