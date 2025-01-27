import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // Image.asset(name) //local file that is asserts
        // Image.network(name),//image url
        // Image.file(name),// file object
        // Image.memory(name),// file bytes
        Image.asset(
          "assets/images/daylight.jpg",
          width: 500,
          height: 200,
        ),
        Image.network(
          'https://th.bing.com/th/id/OIP.7tKxt0BPGt2nDQFWLHj2AAHaE7?w=263&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
          height: 400,
          width: 400,
        ), //image url
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.blue,
          backgroundImage: NetworkImage(
              'https://th.bing.com/th/id/OIP.e73x5rJYu2bDerrjAesUpAAAAA?w=178&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
        )
      ],
    ));
  }
}
