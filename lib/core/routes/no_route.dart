import 'package:flutter/material.dart';

class NoRouteScreen extends StatelessWidget {
  const NoRouteScreen({super.key, required this.roteName});
  final String roteName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("no route defined for $roteName")),
    );
  }
}
