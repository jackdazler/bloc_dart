import 'package:flutter/material.dart';
class UniversalScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget tabBar;
  UniversalScaffold({@required this.title,@required this.body, this.tabBar});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey,
      ),
      body: body,
    );
  }
} 