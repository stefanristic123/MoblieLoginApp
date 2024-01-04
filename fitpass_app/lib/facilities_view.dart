// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FacilitiesView extends StatefulWidget {
  const FacilitiesView({super.key});

  @override
  State<FacilitiesView> createState() => _FacilitiesViewState();
}

class _FacilitiesViewState extends State<FacilitiesView> {


  @override
  Widget build(BuildContext context) {
     return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image(
            image: AssetImage('assets/facilities.jpg'),
            fit: BoxFit.cover, // Use BoxFit.cover for full coverage
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}