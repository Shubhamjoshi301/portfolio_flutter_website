import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/about.dart';
import 'package:portfolio/screens/home/home.dart';

import 'package:portfolio/widgets/appbar/desktop_appbar.dart';

import 'package:portfolio/widgets/appbar/mobile_appbar.dart';
import 'package:portfolio/widgets/social_icon.dart';

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
    bool isHome = false;
    const kSocialIcons = [
      "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
      "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
      "https://img.icons8.com/android/480/ffffff/twitter.png",
      "https://img.icons8.com/metro/308/ffffff/linkedin.png",
      "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    ];
    const kSocialLinks = [
      "https://www.facebook.com/profile.php?id=100005460554654",
      "https://www.instagram.com/__shubhamj.35__/?hl=en",
      "https://twitter.com/Shubham5_3",
      "https://www.linkedin.com/in/shubham-joshi-471195191/",
      "https://github.com/Shubhamjoshi301",
    ];
    return Scaffold(
      appBar: screenSize.width > 760
          ? PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: DesktoppAppbar(
                pageController: _pageController,
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
      body: Stack(
        children: [
          PageView(
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
              About(
                callback: () {
                  setState(() {});
                },
              ),
              About(
                callback: () {
                  setState(() {});
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
