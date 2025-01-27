import 'package:flutter/material.dart';

class RowColumnStack extends StatelessWidget {
  const RowColumnStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Row_column_stack"),
        ),
        // child -> single object (singular)
        //children -> multible object (plural)
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.pinkAccent,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.orange,
        //     ),
        //   ],
        // ));
        body: Container(
          color: Colors.blueGrey,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.pinkAccent,
              ),
              SizedBox(
                width: 11,
                height: 11,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.purple,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
              Text("Stack widget"),
              Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.deepPurple,
                  ),
                  Positioned(
                    //Spacer(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                      margin: EdgeInsets.all(5),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
