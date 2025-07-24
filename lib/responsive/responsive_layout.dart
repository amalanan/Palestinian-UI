import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final WidgetBuilder mobileScreenLayout;
  final WidgetBuilder tabletScreenLayout;
  final WidgetBuilder webScreenLayout;

  const ResponsiveLayout({
    Key? key,
    required this.mobileScreenLayout,
    required this.webScreenLayout,
    required this.tabletScreenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return webScreenLayout(context);
        } else if (constraints.maxWidth > 600) {
          return tabletScreenLayout(context);
        }
        return mobileScreenLayout(context);
      },
    );
  }
}
