import 'package:flutter/material.dart';

class TopView extends StatefulWidget {
  const TopView({super.key});

  @override
  State<TopView> createState() => _TopViewState();
}

// class _TopViewState extends State<TopView> {  // Iphone 14 pro
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color(0xFF1d1b29), 
//       child: Center(
//         child: Text(''),
//       ),
//     );
//   }
// }

// class _TopViewState extends State<TopView> {
//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//     double containerHeightPercentage = 0.3; // Adjust the percentage as needed (0.3 = 30%)

//     return Container(
//       height: screenHeight * containerHeightPercentage,
//       color: Color(0xFF1d1b29),
//       child: Center(
//         child: Text('Your Content Here'), // Add your content here
//       ),
//     );
//   }
// }

class _TopViewState extends State<TopView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0, // Adjust the height as needed - 55
      color: Color(0xFF1d1b29),
      child: Center(
        child: Text('Your Content Here'), // Add your content here
      ),
    );
  }
}