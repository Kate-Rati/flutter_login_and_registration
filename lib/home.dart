import 'package:flowerapp/models/user_model.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  final UserModel userModel;
  const MyHome({Key? key, required this.userModel}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
          padding: const EdgeInsets.all(70),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(140),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage("assets/profile.png"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Email: " + widget.userModel.email!,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 18,
            ),
            Text("Nationality: " + widget.userModel.nationality!,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
          ])),
    );
  }
}
