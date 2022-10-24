import 'package:flutter/material.dart';
import 'package:flowerapp/main.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('User Details'),

        backgroundColor: Colors.blueGrey,
      ),

      body: Padding(
          padding: const EdgeInsets.all(70),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(140),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: const CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage("assets/profile.png"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "My Name  ",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 18,
            ),
            Text("My Profile"),
            SizedBox(
              height: 20,
            ),
          ])),
    );
  }
}
