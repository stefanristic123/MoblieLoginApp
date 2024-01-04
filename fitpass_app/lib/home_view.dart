import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image(
            image: AssetImage('assets/home.jpg'),
            fit: BoxFit.cover, // Use BoxFit.cover for full coverage
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}