import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:url_launcher/url_launcher.dart';

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
  // final ItemScrollController itemScrollController = ItemScrollController();
  // final ScrollController _scrollController = ScrollController();

  _scrollListener() {
    setState(() {});
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
            onPressed: () {
              widget.itemScrollController.scrollTo(
                  index: 3,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOutCubic);
            },
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
            onPressed: _launchUrl,
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

void _launchUrl() async {
  final Uri _url = Uri.parse(
      'https://drive.google.com/file/d/1bQoQikgH8e4dPG-XxPzRnAPS7P80u9Ai/view?usp=sharing');
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}
