import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/home.dart';

import 'package:portfolio/widgets/appbar/desktop_appbar.dart';

import 'package:portfolio/widgets/appbar/mobile_appbar.dart';

class PageController1 extends StatefulWidget {
  // final bool light;
  final VoidCallback callback;
  const PageController1({
    Key? key,
    required this.callback,
  }) : super(key: key);

  @override
  State<PageController1> createState() => _PageControllerState();
}

class _PageControllerState extends State<PageController1> {
  final PageController _pageController = PageController();
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
      body: PageView(
        pageSnapping: false,
        scrollDirection: Axis.vertical,
        controller: _pageController,
        // itemCount: 4,
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          HomePage(
            callback: () {
              setState(
                () {},
              );
            },
          ),
          HomePage(
            callback: () {
              setState(
                () {},
              );
            },
          )
        ],
      ),
    );
  }
}
