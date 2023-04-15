import 'package:flutter/material.dart';
import 'UI/HomeLayout.dart';
import 'UI/Screens/Login.dart';

void main(List<String> args) {
  runApp(const RegSys());
}

class RegSys extends StatelessWidget {
  const RegSys({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeLayout(),
      debugShowCheckedModeBanner: false,
    );
  }
}
