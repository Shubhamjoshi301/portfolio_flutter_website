import 'package:flutter/material.dart';
import 'package:portfolio/widgets/appbar/desktop_appbar.dart';
import 'package:portfolio/screens/home/home_desktop.dart';
import 'package:portfolio/widgets/appbar/mobile_appbar.dart';

class HomePage extends StatefulWidget {
  final VoidCallback callback;
  const HomePage({Key? key, required this.callback}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: screenSize.width > 760
          ? PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: DesktoppAppbar(
                callback: widget.callback,
              ))
          : AppBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              title: const Text(
                "<Shubham/>",
                style: TextStyle(
                  fontFamily: 'Brittany',
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: widget.callback,
                    icon: const Icon(Icons.dark_mode))
              ],
            ),
      drawer: screenSize.width < 760
          ? PreferredSize(
              child: const MobileAppbar(),
              preferredSize: Size(screenSize.width, 2000),
            )
          : null,
      body: const HomeDesktop(),
    );
  }
}
