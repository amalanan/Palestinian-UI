import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:palestinian_ui/responsive/layouts.dart';
import 'package:palestinian_ui/responsive/responsive_layout.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ResponsiveLayout(
          mobileScreenLayout: (context) => MobileLayout(),
          webScreenLayout: (context) => WebScreenLayout(),
          tabletScreenLayout: (context) => TabletScreenLayout(),
        ),
      ),
    );
  }
}
