import 'package:flutter/material.dart';
import 'activitys/Login.dart';


void main() {
  runApp(MaterialApp(
    title: "ArcusCV",
    home: Login(),
    theme: ThemeData(
      primaryColor: Color.fromARGB(255, 4, 125, 141),
      primarySwatch: Colors.blueGrey
    ),
    debugShowCheckedModeBanner: false,
  ));
}
