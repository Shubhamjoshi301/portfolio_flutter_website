// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/about.dart';
import 'package:portfolio/screens/home/home.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:portfolio/widgets/appbar/desktop_appbar.dart';

import 'package:portfolio/widgets/appbar/mobile_appbar.dart';


class PageController1 extends StatefulWidget {
  // final bool light;
  final VoidCallback callback;
  // final ItemScrollController itemScrollController;
  // final ItemPositionsListener itemPositionsListener;
  const PageController1({
    Key? key,
    required this.callback,
    // required this.itemScrollController,
    // required this.itemPositionsListener,
  }) : super(key: key);

  @override
  State<PageController1> createState() => _PageControllerState();
}

class _PageControllerState extends State<PageController1> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  final PageController _pageController = PageController();
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    
  

    final items = [
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
    ];
    return Scaffold(
      appBar: screenSize.width > 760
          ? PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: DesktoppAppbar(
                scrollController: _scrollController,
                itemScrollController: itemScrollController,
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
              child: MobileAppbar(itemScrollController: itemScrollController,scrollController: _scrollController),
              preferredSize: Size(screenSize.width, 2000),
            )
          : null,
      // body: Stack(
      //   children: [
      //     PageView(
      //       pageSnapping: false,
      //       scrollDirection: Axis.vertical,

      //       controller: _pageController,
      //       // itemCount: 4,
      //       physics: const AlwaysScrollableScrollPhysics(),
      //       children: [
      //         HomePage(
      //           callback: () {
      //             setState(
      //               () {},
      //             );
      //           },
      //         ),
      //         About(
      //           callback: () {
      //             setState(() {});
      //           },
      //         ),
      //         About(
      //           callback: () {
      //             setState(() {});
      //           },
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        height: MediaQuery.of(context).size.height,
        child: ScrollablePositionedList.builder(
          itemCount: 3,
          itemBuilder: (context, index) => items[index],
          itemScrollController: itemScrollController,
          itemPositionsListener: itemPositionsListener,
        ),
      ),
    );
  }
}
