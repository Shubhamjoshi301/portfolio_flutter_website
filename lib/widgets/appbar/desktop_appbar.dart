import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DesktoppAppbar extends StatefulWidget {
  final ScrollController scrollController;
  final ItemScrollController itemScrollController;
  const DesktoppAppbar({
    Key? key,
    required this.callback,
    required this.scrollController,
    required this.itemScrollController,
  }) : super(key: key);
  final VoidCallback callback;

  @override
  State<DesktoppAppbar> createState() => _DesktoppAppbarState();
}

class _DesktoppAppbarState extends State<DesktoppAppbar> {
  double _scrollPosition = 0;
  // final ItemScrollController itemScrollController = ItemScrollController();
  // final ScrollController _scrollController = ScrollController();

  _scrollListener() {
    setState(() {
      _scrollPosition = widget.scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    widget.scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      // color: Colors.red,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          Text(
            "<Shubham/>",
            style: TextStyle(
                fontFamily: 'Brittany',
                fontSize: MediaQuery.of(context).size.width * 0.02,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.secondary),
          ),
          const Expanded(child: SizedBox()),
          TextButton(
            onPressed: () {
              widget.itemScrollController.scrollTo(
                  index: 0,
                  curve: Curves.easeInOut,
                  duration: const Duration(milliseconds: 800));
            },
            child: Text(
              "Home",
              style: TextStyle(
                  fontSize: 20, color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          TextButton(
            onPressed: () {
              widget.itemScrollController.scrollTo(
                  index: 1,
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.easeInOutCubic);
            },
            child: Text(
              "About",
              style: TextStyle(
                  fontSize: 20, color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          TextButton(
            onPressed: () {
              widget.itemScrollController.scrollTo(
                  index: 2,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOutCubic);
            },
            child: Text(
              "Projects",
              style: TextStyle(
                  fontSize: 20, color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          TextButton(
            onPressed: null,
            child: Text(
              "Contact",
              style: TextStyle(
                  fontSize: 20, color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          TextButton(
            onPressed: null,
            child: Text(
              "Resume",
              style: TextStyle(
                  fontSize: 20, color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          IconButton(
            onPressed: () => widget.callback(),
            icon: Icon(
              Icons.dark_mode,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
