import 'package:flutter/material.dart';

import 'package:portfolio/screens/home/home_desktop.dart';

class HomePage extends StatefulWidget {
  final VoidCallback callback;
  const HomePage({Key? key, required this.callback}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeDesktop(),
    );
  }
}
