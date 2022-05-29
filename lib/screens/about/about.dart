import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/about_desktop.dart';

class About extends StatefulWidget {
  final VoidCallback callback;
  const About({Key? key, required this.callback}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AboutDesktop(),
    );
  }
}
