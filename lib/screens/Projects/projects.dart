import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/about_desktop.dart';

class Projects extends StatefulWidget {
  final VoidCallback callback;
  const Projects({Key? key, required this.callback}) : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AboutDesktop(),
    );
  }
}
