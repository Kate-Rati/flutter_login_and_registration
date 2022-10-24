

import 'package:flutter/material.dart';
import  'package:flowerapp/login.dart';
import  'package:flowerapp/register.dart';
import 'package:flowerapp/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyLogin(),
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
      'home':(context)=> const MyHome(),
    },
  ));
}