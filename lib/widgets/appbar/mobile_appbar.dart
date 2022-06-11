import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MobileAppbar extends StatefulWidget {
  final ScrollController scrollController;
  final ItemScrollController itemScrollController;
  const MobileAppbar(
      {Key? key,
      required this.scrollController,
      required this.itemScrollController})
      : super(key: key);

  @override
  State<MobileAppbar> createState() => _MobileAppbarState();
}

class _MobileAppbarState extends State<MobileAppbar> {
  late bool hoveredHome = false;
  late bool hoveredAbout = false;
  late bool hoveredProjects = false;
  late bool hoveredContact = false;
  late bool hoveredResume = false;

  // _scrollListener() {
  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   widget.scrollController.addListener(_scrollListener);
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 3,
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Menu",
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  boxShadow: hoveredHome
                      ? [
                          const BoxShadow(
                            color: Colors.blueGrey,
                            blurStyle: BlurStyle.inner,
                            blurRadius: 5,
                          )
                        ]
                      : null),
              child: InkWell(
                onHover: (value) {
                  setState(() {
                    hoveredHome = value;
                  });
                },
                onTap: () {
                  widget.itemScrollController.scrollTo(
                      index: 0,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOutCubic);
                  Navigator.pop(context);
                },
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  boxShadow: hoveredAbout
                      ? [
                          const BoxShadow(
                            color: Colors.blueGrey,
                            blurStyle: BlurStyle.inner,
                            blurRadius: 5,
                          )
                        ]
                      : null),
              child: InkWell(
                onHover: (value) {
                  setState(() {
                    hoveredAbout = value;
                  });
                },
                onTap: () {
                  widget.itemScrollController.scrollTo(
                      index: 1,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOutCubic);
                  Navigator.pop(context);
                },
                child: Text(
                  "About",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  boxShadow: hoveredProjects
                      ? [
                          const BoxShadow(
                            color: Colors.blueGrey,
                            blurStyle: BlurStyle.inner,
                            blurRadius: 5,
                          )
                        ]
                      : null),
              child: InkWell(
                onHover: (value) {
                  setState(() {
                    hoveredProjects = value;
                  });
                },
                onTap: () {
                  widget.itemScrollController.scrollTo(
                      index: 2,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOutCubic);
                  Navigator.pop(context);
                },
                child: Text(
                  "Projects",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  boxShadow: hoveredContact
                      ? [
                          const BoxShadow(
                            color: Colors.blueGrey,
                            blurStyle: BlurStyle.inner,
                            blurRadius: 5,
                          )
                        ]
                      : null),
              child: InkWell(
                onHover: (value) {
                  setState(() {
                    hoveredContact = value;
                  });
                },
                onTap: () {
                  widget.itemScrollController.scrollTo(
                      index: 1,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOutCubic);
                },
                child: Text(
                  "Contact",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
