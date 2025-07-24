import 'package:flutter/material.dart';
import 'package:palestinian_ui/responsive/responsive_layout.dart';
import 'home_page_screens.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileScreenLayout: (context) => HomePageMobileLayout(),
        webScreenLayout: (context) => HomePageWebLayout(),
        tabletScreenLayout: (context) => HomePageTabletLayout(),
      ),
    );
  }
}
