import 'package:flutter/material.dart';

class DesktoppAppbar extends StatefulWidget {
  const DesktoppAppbar({Key? key, required this.callback}) : super(key: key);
  final VoidCallback callback;
  @override
  State<DesktoppAppbar> createState() => _DesktoppAppbarState();
}

class _DesktoppAppbarState extends State<DesktoppAppbar> {
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
            onPressed: null,
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
            onPressed: null,
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
            onPressed: null,
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