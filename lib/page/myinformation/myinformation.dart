import 'package:flutter/material.dart';

class MyInformation extends StatefulWidget {
  const MyInformation({super.key});

  @override
  State<MyInformation> createState() => _MyInformationState();
}

class _MyInformationState extends State<MyInformation> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text("My Information"),);
  }
}