import 'package:flutter/material.dart';

import '../../info.dart';
class HomePageMobileLayout extends StatelessWidget {
  const HomePageMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(images[index], fit: BoxFit.contain),
          );
        },
      ),
    );


  }
}